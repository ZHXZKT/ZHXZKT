<template>
	<view class="StuClass">
		<view>
			<view class="txt"><text>班级名称: 班级123班</text></view>
			<view class="txt"><text>课程名称：中华写字课堂</text></view>
			<view class="txt"><text>任课老师：李华老师</text></view>
			<view class="allbtn">
				<button class="btn"><text>作业</text><text>12次</text></button>
				<button class="btn"><text>相册</text></button>
			</view>
		</view>
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
	.StuClass {
		border: 1rpx solid #000000;
		font-size: 30rpx;
	}
	.txt {
		margin: 10rpx;
	}
	.btn {
		display: inline-block;
		margin: 40rpx;
		font-size: 30rpx;
	}
	.allbtn {
		text-align: center;
	}
</style>
