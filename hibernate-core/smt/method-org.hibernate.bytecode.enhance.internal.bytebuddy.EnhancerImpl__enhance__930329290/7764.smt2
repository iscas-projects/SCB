(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1197 0)
(declare-sort var1108 0)
(declare-sort var2553 0)
(declare-sort var893 0)
(declare-sort var3484 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun classFileLocator/-1178715758 (var1197) var2553)
(declare-fun setClassNameAndBytes/85658077 (var2553 String (Array Int Int)) void)
(declare-fun var3484-init () var3484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2013425830 (var3484 String var592) void)
(declare-fun cast-from-var893-to-var592 (var893) var592)
(declare-fun cast-from-var3484-to-var592 (var3484) var592)
(declare-const null-var1197 var1197)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var893 var893)
(declare-const var3146 var1197) ; Statement: r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl 
(assert (not (= var3146 null-var1197)))
(declare-const var3307 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3307 null-String)))
(declare-const var2199 (Array Int Int)) ; Statement: r3 := @parameter1: byte[] 
(assert (not (= var2199 null-__Array__Int__Int__)))
(assert true)
(define-const var3117 String (replace/1524665721 var3307 47 46)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(define-const var1908 var2553 (classFileLocator/-1178715758 var3146)) ; Statement: $r4 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator classFileLocator> 
(assert true)
;(assert (setClassNameAndBytes/85658077 var1908 var3117 var2199)) ; Statement: virtualinvoke $r4.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: void setClassNameAndBytes(java.lang.String,byte[])>(r1, r3) 

(declare-const var1908!1 var2553)
(declare-const var3117!1 String)
(declare-const var2199!1 (Array Int Int))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3295 var893) ; Statement: $r11 := @caughtexception 
(assert (not (= var3295 null-var893)))
(define-const var429 var3484 var3484-init) ; Statement: $r19 = new org.hibernate.bytecode.enhance.spi.EnhancementException 
(define-const var78 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var78)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var78!1 String)
(assert (= var78!1 ""))
(assert true)
(define-const var1873 String (append/672562846 var78!1 "Failed to enhance class ")) ; Statement: $r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to enhance class ") 
(declare-const var78!2 String)
(assert (= var78!2 (str.++ var78!1 "Failed to enhance class ")))
(assert true)
(define-const var3145 String (append/672562846 var1873 var3307)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 var3307)))
(assert true)
(define-const var2607 String (toString/-2075883882 var3145)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2013425830 var429 var2607 (cast-from-var893-to-var592 var3295))) ; Statement: specialinvoke $r19.<org.hibernate.bytecode.enhance.spi.EnhancementException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11) 

(declare-const var429!1 var3484)
(declare-const var2607!1 String)
(declare-const var3295!1 var893)
(define-const var1339 var592 (cast-from-var3484-to-var592 var429!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), classFileLocator/-1178715758=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl], org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator), setClassNameAndBytes/85658077=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator, java.lang.String, byte[]], void), var3484-init=([], org.hibernate.bytecode.enhance.spi.EnhancementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2013425830=([org.hibernate.bytecode.enhance.spi.EnhancementException, java.lang.String, java.lang.Throwable], void), cast-from-var893-to-var592=([java.lang.RuntimeException], java.lang.Throwable), cast-from-var3484-to-var592=([org.hibernate.bytecode.enhance.spi.EnhancementException], java.lang.Throwable)}
; {var1197=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl, var3146=r2, var3307=r0, var1108=null_type, var2199=r3, var3117=r1, var2553=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator, var1908=$r4, var893=java.lang.RuntimeException, var3295=$r11, var3484=org.hibernate.bytecode.enhance.spi.EnhancementException, var429=$r19, var78=$r18, var1873=$r14, var3145=$r15, var2607=$r16, var592=java.lang.Throwable, var1339=$r20}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl=var1197, r2=var3146, r0=var3307, null_type=var1108, r3=var2199, r1=var3117, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator=var2553, $r4=var1908, java.lang.RuntimeException=var893, $r11=var3295, org.hibernate.bytecode.enhance.spi.EnhancementException=var3484, $r19=var429, $r18=var78, $r14=var1873, $r15=var3145, $r16=var2607, java.lang.Throwable=var592, $r20=var1339}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: byte[];	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r4 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator classFileLocator>;	virtualinvoke $r4.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$EnhancerClassFileLocator: void setClassNameAndBytes(java.lang.String,byte[])>(r1, r3);	$r11 := @caughtexception;	$r19 = new org.hibernate.bytecode.enhance.spi.EnhancementException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to enhance class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.bytecode.enhance.spi.EnhancementException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 2