package com.neusoft.domain;

	public class littleorder { //此处无需实现Comparable接口
	    public String getName() {
				return name;
			}
			public void setName(String name) {
				this.name = name;
			}
			public float getPrice() {
				return price;
			}
			public void setPrice(Float float1) {
				this.price = float1;
			}
			public Integer getNumber() {
				return number;
			}
			public void setNumber(Integer number) {
				this.number = number;
			}
			public float getAmount() {
				return amount;
			}
			public void setAmount(float f) {
				this.amount = f;
			}
		public String name;
	    public float price;
	    public Integer number;//总量
	    public float amount;//总价
	    public String picture;
	    public int productid;
	    
		public int getProductid() {
			return productid;
		}
		public void setProductid(int productid) {
			this.productid = productid;
		}
		public String getPicture() {
			return picture;
		}
		public void setPicture(String picture) {
			this.picture = picture;
		}
	 }
