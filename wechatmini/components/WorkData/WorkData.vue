<template>
	<view class="workdata">
		<u-avatar></u-avatar>
		<text class="txt">学生姓名</text>
		<text class="txt">已交0次</text>
		<text class="txt">未完成0次</text>
		<navigator class="navi">查看作业</navigator>
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
	.workdata {
		padding: 0rpx;
		border: 1rpx solid #000000;
		font-size: 30rpx;
	}
	.txt {
		margin: 5rpx;
		display: inline;
	}
	.navi {
		margin-left: 40rpx;
		display: inline;
	}
</style>
