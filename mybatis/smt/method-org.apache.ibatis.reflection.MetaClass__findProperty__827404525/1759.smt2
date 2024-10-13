(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var76 0)
(declare-sort var1789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buildProperty/-1168500857 (var76 String String) String)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var76 var76)
(declare-const null-String String)
(declare-const var3806 var76) ; Statement: r0 := @this: org.apache.ibatis.reflection.MetaClass 
(assert (not (= var3806 null-var76)))
(declare-const var3342 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3342 null-String)))
(define-const var2325 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2325)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2325!1 String)
(assert (= var2325!1 ""))
(assert true)
(define-const var3980 String (buildProperty/-1168500857 var3806 var3342 var2325!1)) ; Statement: r3 = specialinvoke r0.<org.apache.ibatis.reflection.MetaClass: java.lang.StringBuilder buildProperty(java.lang.String,java.lang.StringBuilder)>(r1, $r2) 
(assert true)
(define-const var1971 Int (length/-171891354 var3980)) ; Statement: $i0 = virtualinvoke r3.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r4 = null 
(assert (not (<= var1971 0))) ; Negate: Cond: $i0 <= 0  
(assert true)
(define-const var2951 String (toString/-2075883882 var3980)) ; Statement: $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buildProperty/-1168500857=([org.apache.ibatis.reflection.MetaClass, java.lang.String, java.lang.StringBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var76=org.apache.ibatis.reflection.MetaClass, var3806=r0, var3342=r1, var1789=null_type, var2325=$r2, var3980=r3, var1971=$i0, var2951=$r4}
; {org.apache.ibatis.reflection.MetaClass=var76, r0=var3806, r1=var3342, null_type=var1789, $r2=var2325, r3=var3980, $i0=var1971, $r4=var2951}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.MetaClass;	r1 := @parameter0: java.lang.String;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r3 = specialinvoke r0.<org.apache.ibatis.reflection.MetaClass: java.lang.StringBuilder buildProperty(java.lang.String,java.lang.StringBuilder)>(r1, $r2);	$i0 = virtualinvoke r3.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r4 = null;	$r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r4];	return $r4
;block_num 3