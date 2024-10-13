(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun maxPoolSize/-1693839518 (var226) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var226 var226)
(declare-const var3785 var226) ; Statement: r1 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var3785 null-var226)))
(define-const var1655 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1655)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1655!1 String)
(assert (= var1655!1 ""))
(define-const var15 Int 1) ; Statement: i5 = 1 
 ; Statement: goto [?= $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>] 
(assert true) ; Non Conditional
(define-const var16 Int (maxPoolSize/-1693839518 var3785)) ; Statement: $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i5 < $i6 goto $r2 = newarray (java.lang.Object)[1] 
(assert (not (< var15 var16))) ; Negate: Cond: i5 < $i6  
(assert true)
(define-const var2293 String (toString/-2075883882 var1655!1)) ; Statement: $r23 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), maxPoolSize/-1693839518=([lombok.launch.ClassFileMetaData], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var226=lombok.launch.ClassFileMetaData, var3785=r1, var1655=$r24, var15=i5, var16=$i6, var2293=$r23}
; {lombok.launch.ClassFileMetaData=var226, r1=var3785, $r24=var1655, i5=var15, $i6=var16, $r23=var2293}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ClassFileMetaData;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	i5 = 1;	goto [?= $i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>];	$i6 = r1.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i5 < $i6 goto $r2 = newarray (java.lang.Object)[1];	$r23 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r23
;block_num 3