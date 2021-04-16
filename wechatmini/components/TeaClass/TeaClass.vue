<template>
	<view class="singleClass">
		<view>
			<text class="classname">班级名称: 123班</text>
			<text class="teacher">班主任</text>
		</view>
		<text class="second">学生人数: 15</text>
		<text class="secondline">班级码: 无</text>
		<view>
			<button type="default" class="radius">成员</button>
			<button type="default" class="radius">统计</button>
			<button type="default" class="radius">作业</button>
			<button type="default" class="radius">相册</button>
		</view>
	</view>
</template>

<script>
	export default {
		name: 'TeaClass',
		data() {
			return {
				
			};
		}
	}
</script>

<style scoped>
	.singleClass {
		border: 1rpx solid #000000;
	}
	.classname {
		margin-left: 10rpx;
		text-overflow: ellipsis;
		overflow: hidden;
		white-space: nowrap;
		display: inline-block;
		word-break: break-all;
		width: 400rpx;
	}
	.teacher {
		margin-left: 110rpx;
		display: inline-block;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	.secondline {
		margin: 20rpx;
	}
	.radius {
		width: 140rpx;
		height: 140rpx;
		border: 1rpx solid #000000;
		color: #000000;
		background-color: #FFFFFF;
		border-radius: 280rpx;
		font-size: 30rpx;
		line-height: 140rpx;
		text-align: center;
		display: inline-block;
		margin: 10rpx;
	}
</style>
