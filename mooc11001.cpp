
// poj 1328 过不了 ， 但能过大部分数据。

#include<iostream>
#include<math.h> 
#include<algorithm>
typedef struct _Part{
	double s;
	double e;
	int set(int x,int y);
	bool operator < (const struct _Part &t) const;

}Part;

int N;
int R;
bool same(double a,double b) {

	return abs((a-b)) < 10e-12;
	
}
int Part::set(int x,int y) {
	if(R*R-y*y < 0) return -1;
	if(R<0) return -1;
	double _x = sqrt(R*R-y*y);
	s = x - _x;
	e = x + _x;
	return 0;
}
bool Part::operator < (const struct _Part &t) const
{
	
		if(same(s,t.s))
			return false;
		return s < t.s;
}

Part parts[1000];


int main() {
	int c = 0;
	std::cin >> N >> R;
	c++;

	while (N)
	{
		int ise = 0;
		for(int i = 0; i<N; i++) {
			int x,y;
			std::cin >> x >> y;
			if(ise) continue;
			if(parts[i].set(x,y)) ise = 1;
		}
		int n = 1;
		Part t;
	
		if(ise) {
			n = -1;
		}else {
			std::sort(parts,parts+N);
			int j = 0;
			double tmp = parts[0].e;
			for(int i = 1; i < N; i++) {

				if(!same(parts[i].s ,tmp) && parts[i].s > tmp) {
					n++; 
					j = i;
					tmp = parts[j].e;
				}
				tmp = std::min(tmp,parts[i].e);
			}
		}
		std::cout << "Case " << c <<  ": " << n << std::endl;
		std::cin >> N >> R;
		c++;
	}
	return 0;
}


