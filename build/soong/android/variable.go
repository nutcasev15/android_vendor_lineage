package android
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
	Pre_ion_x86 struct {
		Cflags []string
	}
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`
	Pre_ion_x86  *bool `json:",omitempty"`
}
