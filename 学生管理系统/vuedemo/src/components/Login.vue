<template>
  <div class="box">
    <el-card class="login-contain">
      <div slot="header">
        <!-- 标题 -->
        <span style="font-size: 30px">学生管理系统</span>
        <!-- 内容 -->
      </div>
      <div class="contain-bottom">
        <el-form ref="loginForm" :model="loginForm" label-width="80px">
          <el-form-item label="用户名">
            <el-input v-model="loginForm.username"></el-input>
          </el-form-item>
          <el-form-item label="密码">
            <el-input v-model="loginForm.password"></el-input>
          </el-form-item>
        </el-form>
      </div>

      <el-button type="primary" @click="login"> 登录 </el-button>

      <div class="msg">
        <!-- 失败提示消息 -->
        <p v-if="errorMessage" class="error-message">{{ errorMessage }}</p>
        <!-- 成功提示消息 -->
        <p v-if="successMessage" class="success-message">
          {{ successMessage }}
        </p>
      </div>
    </el-card>
  </div>
</template>

<script>
export default {
  name: "VuedemoLogin",

  data() {
    return {
      loginForm: {
        username: "",
        password: "",
      },
      errorMessage: "",
      successMessage: "",
    };
  },

  mounted() {},

  methods: {
    login() {
      //发送登录请求
      this.$axios
        .post("/login", {
          username: this.loginForm.username,
          password: this.loginForm.password,
        })
        .then((res) => {
          if (res.data === "success") {
            // 注意这里判断的条件应该是字符串 "success"
            this.errorMessage = "";
            this.successMessage = "登录成功~";
            setTimeout(() => {
              this.$router.push("/home");
            }, 500); // 1.5秒后跳转
          } else {
            this.errorMessage = "用户名或密码错误~";
          }
        })
        .catch((error) => {
          console.error(error);
          this.errorMessage = "登录失败，请稍后重试~";
        });
    },
  },
};
</script>

<style>
.login-contain {
  width: 480px;
  height: 320px;
  text-align: center;
}

.contain-bottom {
  margin-top: 20px;
  margin-right: 30px;
}

.box {
  display: flex;
  /* flex-direction: column; */
  justify-content: center;
  align-items: center;
  height: 100vh; /* 使用视窗高度作为容器高度 */
}

.error-message {
  margin-top: 10px;
  color: #f56c6c;
}

.success-message {
  margin-top: 10px;
  color: green;
}
</style>
