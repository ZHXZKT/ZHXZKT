<template>
	<view class="">
		<view class="u-card-wrap">
			<u-card @click="click" @head-click="headClick" :title="title" :sub-title="releaseTime" :padding="padding" :border="border">
				<view class="" slot="body">
					<view class="u-body-item-title u-line-2">
						教材信息：
					</view>
					<view class="u-body-item-title u-line-2">
						截止时间：
					</view>
					<view class="u-body-item-title u-line-2">
						分享到：
						<uni-icons type="weixin" class="icon" size="20" color="rgb(143,143,148)"></uni-icons>
						<uni-icons type="pengyouquan" class="icon" size="20" color="rgb(143,143,148)"></uni-icons>
						<uni-icons type="qq" class="icon" size="20" color="rgb(143,143,148)"></uni-icons>
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
				title: '作业名称',
				releaseTime: '发布时间：2020-05-15',
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
</style>
