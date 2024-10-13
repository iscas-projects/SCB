(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var546 0)
(declare-sort var104 0)
(declare-sort var1684 0)
(declare-sort var372 0)
(declare-sort var3250 0)
(declare-sort var367 0)
(declare-sort var3819 0)
(declare-sort var10 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClassFile2/769767517 (var104) var1684)
(declare-fun getAttribute/-957059846 (var1684 String) var372)
(declare-fun cast-from-var372-to-var3250 (var372) var3250)
(declare-fun var367_isStatic/-196097779 (Int) Bool)
(declare-fun var3819-init () var3819)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var10_toJavaName/1846546665 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3819 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var104 var104)
(declare-const null-Bool Bool)
(declare-const null-var3250 var3250)
(declare-const var2043 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2043 null-Int)))
(declare-const var1914 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1914 null-String)))
(declare-const var2640 var104) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2640 null-var104)))
(declare-const var1997 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1997 null-Bool)))
(assert true)
(define-const var891 var1684 (getClassFile2/769767517 var2640)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>() 
(assert true)
(define-const var65 var372 (getAttribute/-957059846 var891 "InnerClasses")) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.AttributeInfo getAttribute(java.lang.String)>("InnerClasses") 
(define-const var439 var3250 (cast-from-var372-to-var3250 var65)) ; Statement: r3 = (org.apache.ibatis.javassist.bytecode.InnerClassesAttribute) $r2 
 ; Statement: if r3 == null goto $z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0) 
(assert (= var439 null-var3250)) ; Cond: r3 == null 
(define-const var2965 Bool (var367_isStatic/-196097779 var2043)) ; Statement: $z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0) 
 ; Statement: if $z2 == 0 goto return 
(assert (not (= (ite var2965 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3436 var3819 var3819-init) ; Statement: $r24 = new java.lang.RuntimeException 
(define-const var2630 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2630)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2630!1 String)
(assert (= var2630!1 ""))
(assert true)
(define-const var394 String (append/672562846 var2630!1 "cannot change ")) ; Statement: $r8 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot change ") 
(declare-const var2630!2 String)
(assert (= var2630!2 (str.++ var2630!1 "cannot change ")))
(define-const var637 String (var10_toJavaName/1846546665 var1914)) ; Statement: $r7 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toJavaName(java.lang.String)>(r6) 
(assert true)
(define-const var519 String (append/672562846 var394 var637)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var394!1 String)
(assert (= var394!1 (str.++ var394 var637)))
(assert true)
(define-const var1380 String (append/672562846 var519 " into a static class")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into a static class") 
(declare-const var519!1 String)
(assert (= var519!1 (str.++ var519 " into a static class")))
(assert true)
(define-const var1472 String (toString/-2075883882 var1380)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3436 var1472)) ; Statement: specialinvoke $r24.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11) 

(declare-const var3436!1 var3819)
(declare-const var1472!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassFile2/769767517=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.bytecode.ClassFile), getAttribute/-957059846=([org.apache.ibatis.javassist.bytecode.ClassFile, java.lang.String], org.apache.ibatis.javassist.bytecode.AttributeInfo), cast-from-var372-to-var3250=([org.apache.ibatis.javassist.bytecode.AttributeInfo], org.apache.ibatis.javassist.bytecode.InnerClassesAttribute), var367_isStatic/-196097779=([int], boolean), var3819-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var10_toJavaName/1846546665=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2043=i0, var1914=r6, var546=null_type, var104=org.apache.ibatis.javassist.CtClass, var2640=r0, var1997=z0, var1684=org.apache.ibatis.javassist.bytecode.ClassFile, var891=r1, var372=org.apache.ibatis.javassist.bytecode.AttributeInfo, var65=$r2, var3250=org.apache.ibatis.javassist.bytecode.InnerClassesAttribute, var439=r3, var367=org.apache.ibatis.javassist.Modifier, var2965=$z2, var3819=java.lang.RuntimeException, var3436=$r24, var2630=$r23, var394=$r8, var10=org.apache.ibatis.javassist.bytecode.Descriptor, var637=$r7, var519=$r9, var1380=$r10, var1472=$r11}
; {i0=var2043, r6=var1914, null_type=var546, org.apache.ibatis.javassist.CtClass=var104, r0=var2640, z0=var1997, org.apache.ibatis.javassist.bytecode.ClassFile=var1684, r1=var891, org.apache.ibatis.javassist.bytecode.AttributeInfo=var372, $r2=var65, org.apache.ibatis.javassist.bytecode.InnerClassesAttribute=var3250, r3=var439, org.apache.ibatis.javassist.Modifier=var367, $z2=var2965, java.lang.RuntimeException=var3819, $r24=var3436, $r23=var2630, $r8=var394, org.apache.ibatis.javassist.bytecode.Descriptor=var10, $r7=var637, $r9=var519, $r10=var1380, $r11=var1472}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: org.apache.ibatis.javassist.CtClass;	z0 := @parameter3: boolean;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ClassFile: org.apache.ibatis.javassist.bytecode.AttributeInfo getAttribute(java.lang.String)>("InnerClasses");	r3 = (org.apache.ibatis.javassist.bytecode.InnerClassesAttribute) $r2;	if r3 == null goto $z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0);	$z2 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isStatic(int)>(i0);	if $z2 == 0 goto return;	$r24 = new java.lang.RuntimeException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot change ");	$r7 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toJavaName(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into a static class");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11);	throw $r24
;block_num 3