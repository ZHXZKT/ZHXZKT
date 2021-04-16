<template>
	<view class="">
		<view class="u-card-wrap">
			<u-card @click="click" @head-click="headClick" :title="title" :sub-title="subTitle" :padding="padding" :border="border">
				<view class="" slot="body">
					<view class="u-body-item-title u-line-2">
						<text>题型</text>
						<text class="title">系统</text>
						<text class="title">自建</text>
					</view>
					<view class="u-body-item-title u-line-2">
						<text>选择题：</text>
						<text>{{count}}</text>
						<text>{{count}}</text>
					</view>
					<view class="u-body-item-title u-line-2">
						<text>填空题：</text>
						<text>{{count}}</text>
						<text>{{count}}</text>
					</view>
					<view class="u-body-item-title u-line-2">
						<text>判断题：</text>
						<text>{{count}}</text>
						<text>{{count}}</text>
					</view>
					<view class="u-body-item-title u-line-2">
						<text>连线题：</text>
						<text>{{count}}</text>
						<text>{{count}}</text>
					</view>
				</view>
			</u-card>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				title: '题型情况',
				subTitle: '统计',
				count: 66,
				padding: 20,
				bottomSlot: true,
				border: true
			}
		},
		methods: {
			click(index) {
				console.log("click");
			},
			headClick(index) {
				console.log("headClick");
			}
		}
	}
</script>

<style scoped lang="scss">
	.title {
		margin-left: 40rpx;
		margin-right: 120rpx;
	}
	.u-demo {
		padding-top: 50px;
	}
	
	.u-card-wrap { 
		background-color: $u-bg-color;
		padding: 1px;
	}
	
	.u-body-item {
		font-size: 32rpx;
		color: #333;
		padding: 20rpx 10rpx;
	}
		
	.u-body-item image {
		width: 120rpx;
		flex: 0 0 120rpx;
		height: 120rpx;
		border-radius: 8rpx;
		margin-left: 12rpx;
	}
	.u-line-2 {
		padding: 20rpx 10rpx;
	}
	.icon {
		float: right;
		margin: 5rpx;
	}
	text {
		margin-right: 180rpx;
	}
</style>
