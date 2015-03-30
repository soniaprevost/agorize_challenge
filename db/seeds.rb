# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BoxView::Document.create(
  url: 'http://www.sraticongres.ro/download-files/uPoGPpb.ppt',
  name: 'chimpanzee',
  non_svg: true,
  width: 100,
  height: 100)


Document.create!(name: "Challenge Agorize", box_view_id: BoxView.document_id)

