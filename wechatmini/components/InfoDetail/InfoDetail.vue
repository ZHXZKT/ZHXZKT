<template>
	<view class="">
    <view class="u-card-wrap">
			<u-card @click="click" @head-click="headClick" :title="title" :sub-title="time" :padding="padding" :border="border">
				<view class="" slot="body"> 
					<view class="u-body-item u-flex u-border-bottom u-col-between u-p-t-0">
						<view class="u-body-item-title u-line-2">
							{{content}}
						</view>
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
				title: '系统消息',
				time: '2020-05-15',
				padding: 20,
				bottomSlot: true,
				border: true,
        content:"瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣纸上走笔至此搁一半"
			}
		},
		methods: {
			click(index) {
				console.log(index);
			},
			headClick(index) {
				console.log(index);
			}
		}
	}
</script>

<style scoped lang="scss">
	.u-demo {
		padding-top: 0;
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
</style>
