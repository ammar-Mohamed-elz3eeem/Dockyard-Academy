# Best easy way

# bob_family_tree = %{age: 68, name: "Bob", parents: [], status: :grand_parent}
# bridget_family_tree = %{age: 70, name: "Bridget", parents: [], status: :grand_parent}
# han_family_tree = %{age: 81, name: "Han", parents: [], status: :grand_parent}
# leia_family_tree = %{age: 82, name: "Leia", parents: [], status: :grand_parent}
# uther_family_tree = %{age: 56, name: "Uther", parents: [han_family_tree, leia_family_tree], status: :parent}
# ygraine_family_tree = %{age: 45, name: "Ygraine", parents: [bob_family_tree, bridget_family_tree], status: :parent}
# family_tree = %{age: 22, name: "Arthur", status: :child, parents: [uther_family_tree, ygraine_family_tree]}
# IO.inspect((family_tree))

# Easy way

# family_tree = %{
#   age: 22,
#   name: "Arthur",
#   parents: [
#     %{
#       age: 56,
#       name: "Uther",
#       parents: [
#         %{age: 81, name: "Han", parents: [], status: :grand_parent},
#         %{age: 82, name: "Leia", parents: [], status: :grand_parent}
#       ],
#       status: :parent
#     },
#     %{
#       age: 45,
#       name: "Ygraine",
#       parents: [
#         %{age: 68, name: "Bob", parents: [], status: :grand_parent},
#         %{age: 70, name: "Bridget", parents: [], status: :grand_parent}
#       ],
#       status: :parent
#     }
#   ],
#   status: :child
# }
# IO.inspect((family_tree))

# using access and head and tail approach (hard way)

family_tree = %{name: "Arthur", age: 22, status: :child, parents: []}
family_tree = %{family_tree | parents: [%{name: "Ygraine", age: 45, status: :parent, parents: []} | family_tree[:parents]]}
family_tree = %{family_tree | parents: [%{name: "Uther", age: 56, status: :parent, parents: []} | family_tree[:parents]]}
family_tree = %{
  family_tree | parents: [
    %{ hd(family_tree.parents) | parents: [
      %{name: "Han", status: :grand_parent, age: 81, parents: []},
      %{name: "Leia", status: :grand_parent, age: 82, parents: []}
    ] } | tl(family_tree.parents)
  ]
}
family_tree = %{
  family_tree | parents: [
    hd(family_tree.parents) | [
      %{ hd(tl(family_tree.parents)) | parents: [
        %{name: "Bob", status: :grand_parent, age: 68, parents: []},
        %{name: "Bridget", status: :grand_parent, age: 70, parents: []}
      ] }
    ]
  ]
}
IO.inspect((family_tree))
