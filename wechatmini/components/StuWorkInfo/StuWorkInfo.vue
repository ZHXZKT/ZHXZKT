<template>
	<view class="info">
		<u-avatar></u-avatar>
		<text class="txt">学生姓名</text>
		<text class="txt">已提交</text>
		<!-- <text class="txt">未提交</text> -->
		<button class="btn">查看作业</button>
		<!-- <button class="btn">提醒分享</button> -->
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	.info {
		padding: 0rpx;
		border: 1rpx solid #000000;
		font-size: 30rpx;
	}
	.txt {
		display: inline;
		margin: 0rpx 35rpx;
	}
	.btn {
		display: inline;
		margin-left: 35rpx;
		font-size: 30rpx;
	}
</style>
