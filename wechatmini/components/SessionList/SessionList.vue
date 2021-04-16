<template>
	<view class="u-demo">
		<view class="u-demo-wrap" style="background-color: #ffffff;">
			<view class="u-demo-title">Phon</view>
			<view class="u-demo-area">
				<u-collapse event-type="close" :arrow="true" :accordion="true" @change="change">
					<u-collapse-item :index="index" @change="itemChange" :title="item.head" v-for="(item, index) in itemList" :key="index">
						<u-collapse :item-style="itemStyle" event-type="close" :arrow="false" :accordion="true" @change="change2">
            	<u-collapse-item :index="ind" @change="itemChange" :title="item.body[ind]" v-for="(item2, ind) in item.body" :key="ind">
            	</u-collapse-item>
            </u-collapse>
					</u-collapse-item>
				</u-collapse>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				itemList: [{
					head: "第一单元",
					body: [
            "第一课",
            "第二课",
          ],
					show: false,
				}],
				accordion: true,
				hoverClass: 'hover2',
        firstIndex: 0,
				itemStyle: {
					marginTop: '5px',
          marginLeft: '15px',
					padding: '0 8rpx',
				}
			}
		},
		methods: {
			change(index) {
				let str = '';
				if(Array.isArray(index)) {
					let arr = index.map(val => {
						return Number(val) + 1;
					})
					index = arr.join(',');
				} else {
					index = Number(index) + 1;
				}
        this.firstIndex = index
			},
      change2(index) {
      	let str = '';
      	if(Array.isArray(index)) {
      		let arr = index.map(val => {
      			return Number(val) + 1;
      		})
      		index = arr.join(',');
      	} else {
      		index = Number(index) + 1;
      	}
        // 获取到了两个的index，可以打开题库
      },
			itemChange(e) {
				console.log(e);
			}
		}
	}
</script>

<style>
	.hover1 {
		background-color: red;
	}
</style>

<style lang="scss" scoped>
	.wrap {
		// padding: 24rpx;
	}

	.item {
		//padding: 0 24rpx;
	}

	.head {
		font-size: 30rpx;
		color: $u-main-color;
		line-height: 1;
		padding: 24rpx 24rpx;
	}

	.body {
		font-size: 28rpx;
		color: $u-tips-color;
		line-height: 1.4;
		padding: 24rpx;
	}
</style>
