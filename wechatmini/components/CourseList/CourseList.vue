<template>
	<view class="container">
		<view class="u-card-wrap">
			<u-card :title="course" :padding="padding" :border="border">
				<view class="" slot="body"> 
					<view class="u-body-item u-flex u-border-bottom u-col-between u-p-t-0">
						<view class="u-body-item-title u-line-1">
							课题题库情况
						</view>
						<u-button size="mini" @click="chooseSystem">系统题库</u-button>
            <u-button size="mini" @click="chooseSelfMake">自建题库</u-button>
					</view>
					<view class="u-body-item u-flex u-row-between u-p-b-0">
						<view class="u-body-item-title u-line-1 u-p">
							题库情况
						</view>
						<view class="u-body-item-title u-line-1">
							系统题库
						</view>
            <view class="u-body-item-title u-line-1">
            	自建题库
            </view>
					</view>
          <view class="u-body-item u-flex u-row-between u-p-b-0">
          	<view class="u-body-item-title u-line-1">
          		作业课次
          	</view>
          	<view class="u-body-item-title u-line-1">
          		{{homework.system}}课
          	</view>
            <view class="u-body-item-title u-line-1">
            	{{homework.self}}课
            </view>
          </view>
          <view class="u-body-item u-flex u-row-between u-p-b-0">
          	<view class="u-body-item-title u-line-1">
          		测试卷数
          	</view>
          	<view class="u-body-item-title u-line-1">
          		{{test.system}}次
          	</view>
            <view class="u-body-item-title u-line-1">
            	{{test.self}}次
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
				course: 'Phon',
				padding: 20,
				bottomSlot: true,
				border: true,
        homework:{
          system: 16,
          self: 10,
        },
        test:{
          system: 5,
          self: 4,
        }
			}
		},
		methods: {
      chooseSystem() {
        console.log("系统题库")
      },
      chooseSelfMake() {
        console.log("自建题库")
      },
		}
	}
</script>

<style scoped lang="scss">
	.u-demo {
		padding-top: 0;
	}
	
  u-button {
    margin-left: 40rpx;
  }
  
	.u-card-wrap { 
		background-color: $u-bg-color;
		padding: 1px;
	}
	
	.u-body-item {
		font-size: 25rpx;
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
