(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buildProperty/-1168500857 (var426 String String) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var426 var426)
(declare-const null-String String)
(declare-const var242 var426) ; Statement: r0 := @this: org.apache.ibatis.reflection.MetaClass 
(assert (not (= var242 null-var426)))
(declare-const var752 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var752 null-String)))
(define-const var1571 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1571)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1571!1 String)
(assert (= var1571!1 ""))
(assert true)
(define-const var1344 String (buildProperty/-1168500857 var242 var752 var1571!1)) ; Statement: r3 = specialinvoke r0.<org.apache.ibatis.reflection.MetaClass: java.lang.StringBuilder buildProperty(java.lang.String,java.lang.StringBuilder)>(r1, $r2) 
(assert true)
(define-const var512 Int (length/-171891354 var1344)) ; Statement: $i0 = virtualinvoke r3.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r4 = null 
(assert (<= var512 0)) ; Cond: $i0 <= 0 
(define-const var3092 String null-String) ; Statement: $r4 = null 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buildProperty/-1168500857=([org.apache.ibatis.reflection.MetaClass, java.lang.String, java.lang.StringBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var426=org.apache.ibatis.reflection.MetaClass, var242=r0, var752=r1, var3368=null_type, var1571=$r2, var1344=r3, var512=$i0, var3092=$r4}
; {org.apache.ibatis.reflection.MetaClass=var426, r0=var242, r1=var752, null_type=var3368, $r2=var1571, r3=var1344, $i0=var512, $r4=var3092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.MetaClass;	r1 := @parameter0: java.lang.String;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r3 = specialinvoke r0.<org.apache.ibatis.reflection.MetaClass: java.lang.StringBuilder buildProperty(java.lang.String,java.lang.StringBuilder)>(r1, $r2);	$i0 = virtualinvoke r3.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r4 = null;	$r4 = null;	return $r4
;block_num 3