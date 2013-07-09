struct Para{
	1: bool weight,
	2: bool semtag,
	3: bool postag,
	4: bool property,
	5: string gran,
	6: string encode,
}

struct WeiboCONTENT{
	1: string content,
}

struct SegResultThrift{
	1: string token,
	2: double weight,
	3: i32 property,
	4: string pos_tag,
	5: string segmantic_tag,
}

struct SegResultVec{
	1: string mid,
	2: list<SegResultThrift> tokens,
}

service CallSegmentor{
	list<SegResultVec> getSegResult(1: Para p, 2: list<WeiboCONTENT> weibos),
}
