<template>
  <view class="content">
    <image class="logo" src="/static/logo.png" @click="login"></image>
    <view>
      <text class="title">{{title}}</text>
    </view>
  </view>
</template>

<script>
export default {
  data () {
    return {
      title: 'Login'
    }
  },
  onLoad () {

  },
  methods: {
    login: function () {
      this.$router.push('/login')
    }
  }
}
</script>

<style>
  .content {
    text-align: center;
    height: 400upx;
  }

  .logo {
    height: 200upx;
    width: 200upx;
    margin-top: 200upx;
  }

  .title {
    font-size: 36upx;
    color: #8f8f9;
  }
</style>
