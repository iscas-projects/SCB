(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2882 0)
(declare-sort var3616 0)
(declare-sort var666 0)
(declare-sort var3351 0)
(declare-sort var2703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasSetter/-1218716144 (var3616 String) Bool)
(declare-fun var2703-init () var2703)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOriginalObject/-1540924011 (var3616) var3351)
(declare-fun getClass/1258963082 (var3351) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1671820471 (var2703 String) void)
(declare-const null-var2882 var2882)
(declare-const null-var3616 var3616)
(declare-const null-String String)
(declare-const null-var3351 var3351)
(declare-const var935 var2882) ; Statement: r14 := @this: org.apache.ibatis.executor.keygen.SelectKeyGenerator 
(assert (not (= var935 null-var2882)))
(declare-const var1311 var3616) ; Statement: r0 := @parameter0: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var1311 null-var3616)))
(declare-const var3496 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3496 null-String)))
(declare-const var3340 var3351) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var3340 null-var3351)))
(assert true)
(define-const var732 Bool (hasSetter/-1218716144 var1311 var3496)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: boolean hasSetter(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: void setValue(java.lang.String,java.lang.Object)>(r1, r2) 
(assert (not (not (= (ite var732 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2758 var2703 var2703-init) ; Statement: $r3 = new org.apache.ibatis.executor.ExecutorException 
(define-const var3549 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3549)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3549!1 String)
(assert (= var3549!1 ""))
(assert true)
(define-const var3415 String (append/672562846 var3549!1 "No setter found for the keyProperty \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No setter found for the keyProperty \'") 
(declare-const var3549!2 String)
(assert (= var3549!2 (str.++ var3549!1 "No setter found for the keyProperty \u0027")))
(assert true)
(define-const var565 String (append/672562846 var3415 var3496)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3415!1 String)
(assert (= var3415!1 (str.++ var3415 var3496)))
(assert true)
(define-const var2732 String (append/672562846 var565 "\u0027 in ")) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in ") 
(declare-const var565!1 String)
(assert (= var565!1 (str.++ var565 "\u0027 in ")))
(assert true)
(define-const var2932 var3351 (getOriginalObject/-1540924011 var1311)) ; Statement: $r7 = virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getOriginalObject()>() 
(assert true)
(define-const var2779 ClassObject (getClass/1258963082 var2932)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var551 String (getName/-1958580599 var2779)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var495 String (append/672562846 var2732 var551)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2732!1 String)
(assert (= var2732!1 (str.++ var2732 var551)))
(assert true)
(define-const var1062 String (append/672562846 var495 ".")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var495!1 String)
(assert (= var495!1 (str.++ var495 ".")))
(assert true)
(define-const var1248 String (toString/-2075883882 var1062)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1671820471 var2758 var1248)) ; Statement: specialinvoke $r3.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r13) 

(declare-const var2758!1 var2703)
(declare-const var1248!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {hasSetter/-1218716144=([org.apache.ibatis.reflection.MetaObject, java.lang.String], boolean), var2703-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOriginalObject/-1540924011=([org.apache.ibatis.reflection.MetaObject], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1671820471=([org.apache.ibatis.executor.ExecutorException, java.lang.String], void)}
; {var2882=org.apache.ibatis.executor.keygen.SelectKeyGenerator, var935=r14, var3616=org.apache.ibatis.reflection.MetaObject, var1311=r0, var3496=r1, var666=null_type, var3351=java.lang.Object, var3340=r2, var732=$z0, var2703=org.apache.ibatis.executor.ExecutorException, var2758=$r3, var3549=$r4, var3415=$r5, var565=$r6, var2732=$r10, var2932=$r7, var2779=$r8, var551=$r9, var495=$r11, var1062=$r12, var1248=$r13}
; {org.apache.ibatis.executor.keygen.SelectKeyGenerator=var2882, r14=var935, org.apache.ibatis.reflection.MetaObject=var3616, r0=var1311, r1=var3496, null_type=var666, java.lang.Object=var3351, r2=var3340, $z0=var732, org.apache.ibatis.executor.ExecutorException=var2703, $r3=var2758, $r4=var3549, $r5=var3415, $r6=var565, $r10=var2732, $r7=var2932, $r8=var2779, $r9=var551, $r11=var495, $r12=var1062, $r13=var1248}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.apache.ibatis.executor.keygen.SelectKeyGenerator;	r0 := @parameter0: org.apache.ibatis.reflection.MetaObject;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$z0 = virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: boolean hasSetter(java.lang.String)>(r1);	if $z0 != 0 goto virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: void setValue(java.lang.String,java.lang.Object)>(r1, r2);	$r3 = new org.apache.ibatis.executor.ExecutorException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No setter found for the keyProperty \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in ");	$r7 = virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getOriginalObject()>();	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r13);	throw $r3
;block_num 2