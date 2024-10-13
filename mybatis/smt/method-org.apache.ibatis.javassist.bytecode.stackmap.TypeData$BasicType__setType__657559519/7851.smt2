(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var811 0)
(declare-sort var3817 0)
(declare-sort var1278 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var251-init () var251)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/374542225 (var811) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var251 String) void)
(declare-const null-var811 var811)
(declare-const null-String String)
(declare-const null-var1278 var1278)
(declare-const var3101 var811) ; Statement: r2 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType 
(assert (not (= var3101 null-var811)))
(declare-const var3694 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3694 null-String)))
(declare-const var2376 var1278) ; Statement: r10 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var2376 null-var1278)))
(define-const var2158 var251 var251-init) ; Statement: $r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var3997 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3997)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3997!1 String)
(assert (= var3997!1 ""))
(assert true)
(define-const var1462 String (append/672562846 var3997!1 "conflict: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("conflict: ") 
(declare-const var3997!2 String)
(assert (= var3997!2 (str.++ var3997!1 "conflict: ")))
(define-const var358 String (name/374542225 var3101)) ; Statement: $r3 = r2.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType: java.lang.String name> 
(assert true)
(define-const var2731 String (append/672562846 var1462 var358)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1462!1 String)
(assert (= var1462!1 (str.++ var1462 var358)))
(assert true)
(define-const var17 String (append/672562846 var2731 " and ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var2731!1 String)
(assert (= var2731!1 (str.++ var2731 " and ")))
(assert true)
(define-const var3739 String (append/672562846 var17 var3694)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var17!1 String)
(assert (= var17!1 (str.++ var17 var3694)))
(assert true)
(define-const var15 String (toString/-2075883882 var3739)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var2158 var15)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r9) 

(declare-const var2158!1 var251)
(declare-const var15!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var251-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/374542225=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var811=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType, var3101=r2, var3694=r6, var3817=null_type, var1278=org.apache.ibatis.javassist.ClassPool, var2376=r10, var251=org.apache.ibatis.javassist.bytecode.BadBytecode, var2158=$r0, var3997=$r1, var1462=$r4, var358=$r3, var2731=$r5, var17=$r7, var3739=$r8, var15=$r9}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType=var811, r2=var3101, r6=var3694, null_type=var3817, org.apache.ibatis.javassist.ClassPool=var1278, r10=var2376, org.apache.ibatis.javassist.bytecode.BadBytecode=var251, $r0=var2158, $r1=var3997, $r4=var1462, $r3=var358, $r5=var2731, $r7=var17, $r8=var3739, $r9=var15}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: org.apache.ibatis.javassist.ClassPool;	$r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("conflict: ");	$r3 = r2.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$BasicType: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r9);	throw $r0
;block_num 1