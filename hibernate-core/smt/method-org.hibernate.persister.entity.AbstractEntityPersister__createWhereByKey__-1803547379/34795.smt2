(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort var652 0)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSubclassTableKeyColumns/298337741 (var2014 Int) (Array Int String))
(declare-fun var3244_qualify/-195745679 (String (Array Int String)) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2014 var2014)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2050 var2014) ; Statement: r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2050 null-var2014)))
(declare-const var634 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var634 null-Int)))
(declare-const var2841 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2841 null-String)))
(define-const var3212 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3212)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3212!1 String)
(assert (= var3212!1 ""))
(assert true)
(define-const var2194 (Array Int String) (getSubclassTableKeyColumns/298337741 var2050 var634)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getSubclassTableKeyColumns(int)>(i0) 
(define-const var3552 (Array Int String) (var3244_qualify/-195745679 var2841 var2194)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>(r1, $r3) 
(define-const var2717 String (String_join/-1520935655 (cast-from-String-to-String "=? and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3552))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("=? and ", $r4) 
(assert true)
(define-const var3748 String (append/672562846 var3212!1 var2717)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3212!2 String)
(assert (= var3212!2 (str.++ var3212!1 var2717)))
(assert true)
(define-const var3527 String (append/672562846 var3748 "=?")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?") 
(declare-const var3748!1 String)
(assert (= var3748!1 (str.++ var3748 "=?")))
(assert true)
(define-const var2936 String (toString/-2075883882 var3527)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSubclassTableKeyColumns/298337741=([org.hibernate.persister.entity.AbstractEntityPersister, int], java.lang.String[]), var3244_qualify/-195745679=([java.lang.String, java.lang.String[]], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2014=org.hibernate.persister.entity.AbstractEntityPersister, var2050=r2, var634=i0, var2841=r1, var652=null_type, var3212=$r0, var2194=$r3, var3244=org.hibernate.internal.util.StringHelper, var3552=$r4, var2717=$r5, var3748=$r6, var3527=$r7, var2936=$r8}
; {org.hibernate.persister.entity.AbstractEntityPersister=var2014, r2=var2050, i0=var634, r1=var2841, null_type=var652, $r0=var3212, $r3=var2194, org.hibernate.internal.util.StringHelper=var3244, $r4=var3552, $r5=var2717, $r6=var3748, $r7=var3527, $r8=var2936}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getSubclassTableKeyColumns(int)>(i0);	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>(r1, $r3);	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("=? and ", $r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1