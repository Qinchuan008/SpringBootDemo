<template>
  <div class="home">
    <el-card>
      <!-- 头部 -->
      <el-header>
        <el-row type="flex" justify="space-around">
          <el-col :span="8" style="text-align: center">
            <el-button
              type="primary"
              class="home-button"
              @click="addStudentDialogVisible = true"
              >添加学生</el-button
            >
          </el-col>
          <el-col :span="8" style="text-align: center">
            <div class="home-text">学生管理系统</div>
          </el-col>
          <el-col :span="8" style="text-align: center">
            <el-button type="primary" class="home-button" @click="logout"
              >退出系统</el-button
            >
          </el-col>
        </el-row>
      </el-header>

      <!-- 主体 -->
      <el-table :data="displayStudents" border style="width: 100%">
        <el-table-column prop="id" label="ID" />
        <el-table-column prop="name" label="姓名" />
        <el-table-column prop="age" label="年龄" />
        <el-table-column prop="grade" label="年级" />
        <el-table-column prop="clazz" label="班级" />
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button type="text" @click="editStudent(scope.row)"
              >编辑</el-button
            >
            <el-button type="text" @click="removeStudent(scope.row)"
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>

      <!--开启分页-->
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="currentPage"
        :page-sizes="[10, 20, 30, 40]"
        :page-size="pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="students.length"
        prev-text="上一页"
        next-text="下一页"
        background
      >
      </el-pagination>
    </el-card>

    <!-- 添加学生对话框 -->
    <el-dialog
      title="添加学生"
      :visible.sync="addStudentDialogVisible"
      width="30%"
      @close="resetForm('addStudentForm')"
    >
      <el-form ref="addStudentForm" :model="addStudentForm" label-width="80px">
        <el-form-item label="姓名" prop="name">
          <el-input v-model="addStudentForm.name"></el-input>
        </el-form-item>
        <el-form-item label="年龄" prop="age">
          <el-input v-model="addStudentForm.age"></el-input>
        </el-form-item>
        <el-form-item label="年级" prop="grade">
          <el-input v-model="addStudentForm.grade"></el-input>
        </el-form-item>
        <el-form-item label="班级" prop="clazz">
          <el-input v-model="addStudentForm.clazz"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="addStudentDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="addStudent">确认添加</el-button>
      </span>
    </el-dialog>

    <!-- 编辑学生对话框 -->
    <el-dialog
      title="编辑学生信息"
      :visible.sync="editStudentDialogVisible"
      width="30%"
      @close="resetForm('editStudentForm')"
    >
      <el-form
        ref="editStudentForm"
        :model="editStudentForm"
        label-width="80px"
      >
        <el-form-item label="姓名" prop="name">
          <el-input v-model="editStudentForm.name"></el-input>
        </el-form-item>
        <el-form-item label="年龄" prop="age">
          <el-input v-model="editStudentForm.age"></el-input>
        </el-form-item>
        <el-form-item label="年级" prop="grade">
          <el-input v-model="editStudentForm.grade"></el-input>
        </el-form-item>
        <el-form-item label="班级" prop="clazz">
          <el-input v-model="editStudentForm.clazz"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="editStudentDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="updateStudent">确认修改</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "VuedemoHome",

  data() {
    return {
      students: [],
      addStudentDialogVisible: false,
      addStudentForm: {
        name: "",
        age: "",
        grade: "",
        clazz: "",
      },
      editStudentDialogVisible: false,
      editStudentForm: {
        id: "",
        name: "",
        age: "",
        grade: "",
        clazz: "",
      },
      currentPage: 1,
      pageSize: 10,
    };
  },
  computed: {
    displayStudents() {
      const start = (this.currentPage - 1) * this.pageSize;
      const end = start + this.pageSize;
      return this.students.slice(start, end);
    },
  },
  created() {
    this.fetchStudents();
  },

  methods: {
    fetchStudents() {
      this.$axios.get("/getAll").then((res) => {
        this.students = res.data;
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    },
    addStudent() {
      this.$axios
        .post("/add", this.addStudentForm)
        .then((res) => {
          if (res.data === "success") {
            this.addStudentDialogVisible = false;
            this.resetForm("addStudentForm");
            this.fetchStudents();
            this.$message.success("添加成功");
          } else {
            this.$message.error("添加失败，请稍后重试");
          }
        })
        .catch((error) => {
          this.$message.error("添加失败，请稍后重试");
          console.error(error);
        });
    },
    editStudent(student) {
      this.editStudentForm = {
        id: student.id,
        name: student.name,
        age: student.age,
        grade: student.grade,
        clazz: student.clazz,
      };
      this.editStudentDialogVisible = true;
    },
    updateStudent() {
      this.$axios
        .put("/update", this.editStudentForm)
        .then((response) => {
          if (response.data === "success") {
            this.editStudentDialogVisible = false;
            this.resetForm("editStudentForm");
            this.fetchStudents();
            this.$message.success("修改成功");
          } else {
            this.$message.error("修改失败，请稍后重试");
          }
        })
        .catch((error) => {
          this.$message.error("修改失败，请稍后重试");
          console.error(error);
        });
    },
    removeStudent(student) {
      this.$axios
        .delete(`/delete/${student.id}`) // 修改为正确的删除请求路径
        .then((response) => {
          if (response.data === "success") {
            // 删除成功的处理逻辑
            this.fetchStudents();
            this.$message.success("删除成功");
          } else {
            // 删除失败的处理逻辑
            this.$message.error("删除失败，请稍后重试");
          }
        })
        .catch((error) => {
          console.error("Error deleting student:", error);
          this.$message.error("删除失败，请稍后重试");
        });
    },

    handleCurrentChange(val) {
      this.currentPage = val;
    },
    handleSizeChange(val) {
      this.pageSize = val;
    },
    logout() {
      this.$router.push("/login");
    },
  },
};
</script>

<style>
.home {
  padding: 10px;
}
.home-text {
  font-size: 30px;
}
.home-button {
  margin-top: 10px;
}

.el-pagination {
  margin-top: 20px;
  text-align: center;
  font-size: 18px;
}
</style>
