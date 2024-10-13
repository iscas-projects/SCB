(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var524 0)
(declare-sort var167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun terms/-996635044 (var3151) (Array Int var167))
(declare-fun getLength-Arr-var167-1 ((Array Int var167)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3151 var3151)
(declare-const null-String String)
(declare-const var294 var3151) ; Statement: r1 := @this: org.apache.lucene.search.BlendedTermQuery 
(assert (not (= var294 null-var3151)))
(declare-const var3421 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3421 null-String)))
(define-const var2216 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2216 "Blended(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Blended(") 
(declare-const var2216!1 String)
(assert (= var2216!1 "Blended("))
(define-const var2523 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3413 (Array Int var167) (terms/-996635044 var294)) ; Statement: $r2 = r1.<org.apache.lucene.search.BlendedTermQuery: org.apache.lucene.index.Term[] terms> 
(define-const var1083 Int (getLength-Arr-var167-1 var3413)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (>= var2523 var1083)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/672562846 var2216!1 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2216!2 String)
(assert (= var2216!2 (str.++ var2216!1 ")")))
(assert true)
(define-const var194 String (toString/-2075883882 var2216!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), terms/-996635044=([org.apache.lucene.search.BlendedTermQuery], org.apache.lucene.index.Term[]), getLength-Arr-var167-1=([org.apache.lucene.index.Term[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3151=org.apache.lucene.search.BlendedTermQuery, var294=r1, var3421=r8, var524=null_type, var2216=$r0, var2523=i2, var167=org.apache.lucene.index.Term, var3413=$r2, var1083=$i0, var194=$r3}
; {org.apache.lucene.search.BlendedTermQuery=var3151, r1=var294, r8=var3421, null_type=var524, $r0=var2216, i2=var2523, org.apache.lucene.index.Term=var167, $r2=var3413, $i0=var1083, $r3=var194}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.BlendedTermQuery;	r8 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Blended(");	i2 = 0;	$r2 = r1.<org.apache.lucene.search.BlendedTermQuery: org.apache.lucene.index.Term[] terms>;	$i0 = lengthof $r2;	if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3