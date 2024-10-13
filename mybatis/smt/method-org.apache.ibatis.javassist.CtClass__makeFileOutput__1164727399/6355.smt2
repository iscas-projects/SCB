(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var246 0)
(declare-sort var3266 0)
(declare-sort var2044 0)
(declare-sort var154 0)
(declare-sort var3783 0)
(declare-sort var1005 0)
(declare-sort var59 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var246) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun var154-init () var154)
(declare-fun var3783-init () var3783)
(declare-fun var1005-init () var1005)
(declare-fun <init>/-1997746424 (var1005 String) void)
(declare-fun <init>/-45892038 (var3783 var59) void)
(declare-fun cast-from-var1005-to-var59 (var1005) var59)
(declare-fun <init>/-598268155 (var154 var59) void)
(declare-fun cast-from-var3783-to-var59 (var3783) var59)
(declare-const null-var246 var246)
(declare-const null-String String)
(declare-const var2044-separatorChar Int)
(declare-const var2699 var246) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2699 null-var246)))
(declare-const var25 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var25 null-String)))
(assert true)
(define-const var2954 String (getName/1611768686 var2699)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(define-const var3063 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3063)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3063!1 String)
(assert (= var3063!1 ""))
(assert true)
(define-const var2339 String (append/672562846 var3063!1 var25)) ; Statement: $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3063!2 String)
(assert (= var3063!2 (str.++ var3063!1 var25)))
(define-const var2063 Int var2044-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2875 String (append/-1166366385 var2339 var2063)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2339!1 String)
(assert (str.prefixof var2339 var2339!1))
(define-const var326 Int var2044-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3056 String (replace/1524665721 var2954 46 var326)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c1) 
(assert true)
(define-const var3252 String (append/672562846 var2875 var3056)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2875!1 String)
(assert (= var2875!1 (str.++ var2875 var3056)))
(assert true)
(define-const var1409 String (append/672562846 var3252 ".class")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3252!1 String)
(assert (= var3252!1 (str.++ var3252 ".class")))
(assert true)
(define-const var1209 String (toString/-2075883882 var1409)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1879 Int var2044-separatorChar) ; Statement: $c2 = <java.io.File: char separatorChar> 
(define-const var959 Int (cast-from-Int-to-Int var1879)) ; Statement: $i4 = (int) $c2 
(assert true)
(define-const var1154 Int (lastIndexOf/-1292097097 var1209 var959)) ; Statement: i3 = virtualinvoke r9.<java.lang.String: int lastIndexOf(int)>($i4) 
 ; Statement: if i3 <= 0 goto $r19 = new java.io.DataOutputStream 
(assert (<= var1154 0)) ; Cond: i3 <= 0 
(define-const var587 var154 var154-init) ; Statement: $r19 = new java.io.DataOutputStream 
(define-const var3480 var3783 var3783-init) ; Statement: $r18 = new java.io.BufferedOutputStream 
(define-const var155 var1005 var1005-init) ; Statement: $r17 = new org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream 
(assert true)
;(assert (<init>/-1997746424 var155 var1209)) ; Statement: specialinvoke $r17.<org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream: void <init>(java.lang.String)>(r9) 

(declare-const var155!1 var1005)
(declare-const var1209!1 String)
(assert true)
;(assert (<init>/-45892038 var3480 (cast-from-var1005-to-var59 var155!1))) ; Statement: specialinvoke $r18.<java.io.BufferedOutputStream: void <init>(java.io.OutputStream)>($r17) 

(declare-const var3480!1 var3783)
(declare-const var155!2 var1005)
(assert true)
;(assert (<init>/-598268155 var587 (cast-from-var3783-to-var59 var3480!1))) ; Statement: specialinvoke $r19.<java.io.DataOutputStream: void <init>(java.io.OutputStream)>($r18) 

(declare-const var587!1 var154)
(declare-const var3480!2 var3783)
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), var154-init=([], java.io.DataOutputStream), var3783-init=([], java.io.BufferedOutputStream), var1005-init=([], org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream), <init>/-1997746424=([org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream, java.lang.String], void), <init>/-45892038=([java.io.BufferedOutputStream, java.io.OutputStream], void), cast-from-var1005-to-var59=([org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream], java.io.OutputStream), <init>/-598268155=([java.io.DataOutputStream, java.io.OutputStream], void), cast-from-var3783-to-var59=([java.io.BufferedOutputStream], java.io.OutputStream)}
; {var246=org.apache.ibatis.javassist.CtClass, var2699=r0, var25=r3, var3266=null_type, var2954=r1, var3063=$r15, var2339=$r4, var2044=java.io.File, var2063=$c0, var2875=$r6, var326=$c1, var3056=$r5, var3252=$r7, var1409=$r8, var1209=r9, var1879=$c2, var959=$i4, var1154=i3, var154=java.io.DataOutputStream, var587=$r19, var3783=java.io.BufferedOutputStream, var3480=$r18, var1005=org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream, var155=$r17, var59=java.io.OutputStream}
; {org.apache.ibatis.javassist.CtClass=var246, r0=var2699, r3=var25, null_type=var3266, r1=var2954, $r15=var3063, $r4=var2339, java.io.File=var2044, $c0=var2063, $r6=var2875, $c1=var326, $r5=var3056, $r7=var3252, $r8=var1409, r9=var1209, $c2=var1879, $i4=var959, i3=var1154, java.io.DataOutputStream=var154, $r19=var587, java.io.BufferedOutputStream=var3783, $r18=var3480, org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream=var1005, $r17=var155, java.io.OutputStream=var59}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	r3 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$c0 = <java.io.File: char separatorChar>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$c1 = <java.io.File: char separatorChar>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$c2 = <java.io.File: char separatorChar>;	$i4 = (int) $c2;	i3 = virtualinvoke r9.<java.lang.String: int lastIndexOf(int)>($i4);	if i3 <= 0 goto $r19 = new java.io.DataOutputStream;	$r19 = new java.io.DataOutputStream;	$r18 = new java.io.BufferedOutputStream;	$r17 = new org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream;	specialinvoke $r17.<org.apache.ibatis.javassist.CtClass$DelayedFileOutputStream: void <init>(java.lang.String)>(r9);	specialinvoke $r18.<java.io.BufferedOutputStream: void <init>(java.io.OutputStream)>($r17);	specialinvoke $r19.<java.io.DataOutputStream: void <init>(java.io.OutputStream)>($r18);	return $r19
;block_num 2