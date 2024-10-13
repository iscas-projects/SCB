(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3117 0)
(declare-sort var2714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-703958615 (var3117) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3117 var3117)
(declare-const null-String String)
(declare-const var239 var3117) ; Statement: r1 := @this: org.apache.lucene.search.IndriQuery 
(assert (not (= var239 null-var3117)))
(declare-const var981 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var981 null-String)))
(define-const var3626 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3626)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3626!1 String)
(assert (= var3626!1 ""))
(define-const var3478 Int 0) ; Statement: i2 = 0 
(assert true)
(define-const var1262 Iterator (iterator/-703958615 var239)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.search.IndriQuery: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1899 Bool (Iterator_hasNext/-1669924200 var1262)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1899 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1514 String (toString/-2075883882 var3626!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-703958615=([org.apache.lucene.search.IndriQuery], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3117=org.apache.lucene.search.IndriQuery, var239=r1, var981=r9, var2714=null_type, var3626=$r0, var3478=i2, var1262=r2, var1899=$z0, var1514=$r3}
; {org.apache.lucene.search.IndriQuery=var3117, r1=var239, r9=var981, null_type=var2714, $r0=var3626, i2=var3478, r2=var1262, $z0=var1899, $r3=var1514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.IndriQuery;	r9 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	r2 = virtualinvoke r1.<org.apache.lucene.search.IndriQuery: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3