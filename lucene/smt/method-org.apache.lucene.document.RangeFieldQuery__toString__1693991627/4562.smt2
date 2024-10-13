(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var813 0)
(declare-sort var3224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/1960285582 (var813) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ranges/1960285582 (var813) (Array Int Int))
(declare-fun toString/-1452777261 (var813 (Array Int Int) Int) String)
(declare-fun numDims/1960285582 (var813) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var813 var813)
(declare-const null-String String)
(declare-const var3004 var813) ; Statement: r1 := @this: org.apache.lucene.document.RangeFieldQuery 
(assert (not (= var3004 null-var813)))
(declare-const var1489 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1489 null-String)))
(define-const var3834 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3834)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3834!1 String)
(assert (= var3834!1 ""))
(define-const var3819 String (field/1960285582 var3004)) ; Statement: $r3 = r1.<org.apache.lucene.document.RangeFieldQuery: java.lang.String field> 
(assert true)
(define-const var94 Bool (= var3819 var1489)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<ranges:") 
(assert (not (= (ite var94 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var3834!1 "<ranges:")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<ranges:") 
(declare-const var3834!2 String)
(assert (= var3834!2 (str.++ var3834!1 "<ranges:")))
(define-const var1363 (Array Int Int) (ranges/1960285582 var3004)) ; Statement: $r4 = r1.<org.apache.lucene.document.RangeFieldQuery: byte[] ranges> 
(assert true)
(define-const var776 String (toString/-1452777261 var3004 var1363 0)) ; Statement: $r5 = virtualinvoke r1.<org.apache.lucene.document.RangeFieldQuery: java.lang.String toString(byte[],int)>($r4, 0) 
(assert true)
;(assert (append/672562846 var3834!2 var776)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3834!3 String)
(assert (= var3834!3 (str.++ var3834!2 var776)))
(define-const var2428 Int 1) ; Statement: i0 = 1 
(assert true) ; Non Conditional
(define-const var2360 Int (numDims/1960285582 var3004)) ; Statement: $i1 = r1.<org.apache.lucene.document.RangeFieldQuery: int numDims> 
 ; Statement: if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var2428 var2360)) ; Cond: i0 >= $i1 
(assert true)
;(assert (append/-1166366385 var3834!3 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3834!4 String)
(assert (str.prefixof var3834!3 var3834!4))
(assert true)
(define-const var3325 String (toString/-2075883882 var3834!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/1960285582=([org.apache.lucene.document.RangeFieldQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ranges/1960285582=([org.apache.lucene.document.RangeFieldQuery], byte[]), toString/-1452777261=([org.apache.lucene.document.RangeFieldQuery, byte[], int], java.lang.String), numDims/1960285582=([org.apache.lucene.document.RangeFieldQuery], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var813=org.apache.lucene.document.RangeFieldQuery, var3004=r1, var1489=r2, var3224=null_type, var3834=$r0, var3819=$r3, var94=$z0, var1363=$r4, var776=$r5, var2428=i0, var2360=$i1, var3325=$r6}
; {org.apache.lucene.document.RangeFieldQuery=var813, r1=var3004, r2=var1489, null_type=var3224, $r0=var3834, $r3=var3819, $z0=var94, $r4=var1363, $r5=var776, i0=var2428, $i1=var2360, $r6=var3325}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.lucene.document.RangeFieldQuery: java.lang.String toString(byte[],int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.RangeFieldQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.RangeFieldQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<ranges:");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<ranges:");	$r4 = r1.<org.apache.lucene.document.RangeFieldQuery: byte[] ranges>;	$r5 = virtualinvoke r1.<org.apache.lucene.document.RangeFieldQuery: java.lang.String toString(byte[],int)>($r4, 0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	i0 = 1;	$i1 = r1.<org.apache.lucene.document.RangeFieldQuery: int numDims>;	if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4