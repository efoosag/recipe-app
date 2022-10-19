belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  validates :name, presence: { message: "Name can't be null" }, length: { maximum: 250 }
  validates :description, presence: { message: "Description can't be null" }
  validates :preparation_time, presence: { message: "Preparation time can't be null" }
  validates :cooking_time, presence: { message: "Cooking time can't be null" }