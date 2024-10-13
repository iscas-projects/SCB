(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3002 0)
(declare-sort var2953 0)
(declare-sort var3880 0)
(declare-sort var1053 0)
(declare-sort var1683 0)
(declare-sort var1867 0)
(declare-sort var3696 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCause/-638798464 (var1053) var1053)
(declare-fun cast-from-var2953-to-var1053 (var2953) var1053)
(declare-fun var2953-init () var2953)
(declare-fun arr-var3696-init () (Array Int var3696))
(declare-fun cast-from-String-to-var3696 (String) var3696)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var3696 (Int) var3696)
(declare-fun String_format/-647569892 (var1867 String (Array Int var3696)) String)
(declare-fun <init>/-252871109 (var2953 String var1053) void)
(declare-fun getStackTrace/1942967699 (var1053) (Array Int var1262))
(declare-fun setStackTrace/558595491 (var1053 (Array Int var1262)) void)
(declare-const null-var3002 var3002)
(declare-const null-var2953 var2953)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1053 var1053)
(declare-const var1683-JRE_IS_64BIT Bool)
(declare-const var1867-ENGLISH var1867)
(declare-const null-__Array__Int__var3696__ (Array Int var3696))
(declare-const var1096 var3002) ; Statement: r3 := @this: org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider 
(assert (not (= var1096 null-var3002)))
(declare-const var3524 var2953) ; Statement: r0 := @parameter0: java.io.IOException 
(assert (not (= var3524 null-var2953)))
(declare-const var573 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var573 null-String)))
(declare-const var3778 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var3778 null-Int)))
(assert true)
(define-const var3881 var1053 (getCause/-638798464 (cast-from-var2953-to-var1053 var3524))) ; Statement: $r1 = virtualinvoke r0.<java.io.IOException: java.lang.Throwable getCause()>() 
(define-const var442 Bool false) ; Statement: $z0 = $r1 instanceof java.lang.OutOfMemoryError 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r0.<java.io.IOException: java.lang.String getMessage()>() 
(assert (not (= (ite var442 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3820 String "Map failed") ; Statement: r4 = "Map failed" 
(define-const var3849 var1053 null-var1053) ; Statement: r5 = null 
 ; Statement: goto [?= $z1 = <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT>] 
(assert true) ; Non Conditional
(define-const var1944 Bool var1683-JRE_IS_64BIT) ; Statement: $z1 = <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT> 
 ; Statement: if $z1 != 0 goto $z2 = <org.apache.lucene.util.Constants: boolean WINDOWS> 
(assert (not (not (= (ite var1944 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2838 String "MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. ") ; Statement: r6 = "MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. " 
 ; Statement: goto [?= $r7 = new java.io.IOException] 
(assert true) ; Non Conditional
(define-const var2128 var2953 var2953-init) ; Statement: $r7 = new java.io.IOException 
(define-const var1546 var1867 var1867-ENGLISH) ; Statement: $r8 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2457 (Array Int var3696) arr-var3696-init) ; Statement: $r9 = newarray (java.lang.Object)[4] 
(declare-const var2457!1 (Array Int var3696))
(assert (not (= var2457!1 null-__Array__Int__var3696__)))
(assert (= (select var2457!1 0) (cast-from-String-to-var3696 var3820))) ; Statement: $r9[0] = r4 
(declare-const var2457!2 (Array Int var3696))
(assert (not (= var2457!2 null-__Array__Int__var3696__)))
(assert (= (select var2457!2 1) (cast-from-String-to-var3696 var573))) ; Statement: $r9[1] = r2 
(define-const var3550 Int (Int_valueOf/-1102777585 var3778)) ; Statement: $r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var2457!3 (Array Int var3696))
(assert (not (= var2457!3 null-__Array__Int__var3696__)))
(assert (= (select var2457!3 2) (cast-from-Int-to-var3696 var3550))) ; Statement: $r9[2] = $r10 
(declare-const var2457!4 (Array Int var3696))
(assert (not (= var2457!4 null-__Array__Int__var3696__)))
(assert (= (select var2457!4 3) (cast-from-String-to-var3696 var2838))) ; Statement: $r9[3] = r6 
(define-const var3517 String (String_format/-647569892 var1546 "%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: https://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]" var2457!4)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: https://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]", $r9) 
(assert true)
;(assert (<init>/-252871109 var2128 var3517 var3849)) ; Statement: specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r11, r5) 

(declare-const var2128!1 var2953)
(declare-const var3517!1 String)
(declare-const var3849!1 var1053)
(assert true)
(define-const var503 (Array Int var1262) (getStackTrace/1942967699 (cast-from-var2953-to-var1053 var3524))) ; Statement: $r12 = virtualinvoke r0.<java.io.IOException: java.lang.StackTraceElement[] getStackTrace()>() 
(assert true)
;(assert (setStackTrace/558595491 (cast-from-var2953-to-var1053 var2128!1) var503)) ; Statement: virtualinvoke $r7.<java.io.IOException: void setStackTrace(java.lang.StackTraceElement[])>($r12) 

(declare-const var2128!2 var2953)
(declare-const var503!1 (Array Int var1262))
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var2953-to-var1053=([java.io.IOException], java.lang.Throwable), var2953-init=([], java.io.IOException), arr-var3696-init=([], java.lang.Object[]), cast-from-String-to-var3696=([java.lang.String], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var3696=([java.lang.Long], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void), getStackTrace/1942967699=([java.lang.Throwable], java.lang.StackTraceElement[]), setStackTrace/558595491=([java.lang.Throwable, java.lang.StackTraceElement[]], void)}
; {var3002=org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider, var1096=r3, var2953=java.io.IOException, var3524=r0, var573=r2, var3880=null_type, var3778=l0, var1053=java.lang.Throwable, var3881=$r1, var442=$z0, var3820=r4, var3849=r5, var1683=org.apache.lucene.util.Constants, var1944=$z1, var2838=r6, var2128=$r7, var1867=java.util.Locale, var1546=$r8, var3696=java.lang.Object, var2457=$r9, var3550=$r10, var3517=$r11, var1262=java.lang.StackTraceElement, var503=$r12}
; {org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider=var3002, r3=var1096, java.io.IOException=var2953, r0=var3524, r2=var573, null_type=var3880, l0=var3778, java.lang.Throwable=var1053, $r1=var3881, $z0=var442, r4=var3820, r5=var3849, org.apache.lucene.util.Constants=var1683, $z1=var1944, r6=var2838, $r7=var2128, java.util.Locale=var1867, $r8=var1546, java.lang.Object=var3696, $r9=var2457, $r10=var3550, $r11=var3517, java.lang.StackTraceElement=var1262, $r12=var503}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider;	r0 := @parameter0: java.io.IOException;	r2 := @parameter1: java.lang.String;	l0 := @parameter2: long;	$r1 = virtualinvoke r0.<java.io.IOException: java.lang.Throwable getCause()>();	$z0 = $r1 instanceof java.lang.OutOfMemoryError;	if $z0 == 0 goto r4 = virtualinvoke r0.<java.io.IOException: java.lang.String getMessage()>();	r4 = "Map failed";	r5 = null;	goto [?= $z1 = <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT>];	$z1 = <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT>;	if $z1 != 0 goto $z2 = <org.apache.lucene.util.Constants: boolean WINDOWS>;	r6 = "MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. ";	goto [?= $r7 = new java.io.IOException];	$r7 = new java.io.IOException;	$r8 = <java.util.Locale: java.util.Locale ENGLISH>;	$r9 = newarray (java.lang.Object)[4];	$r9[0] = r4;	$r9[1] = r2;	$r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r9[2] = $r10;	$r9[3] = r6;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: https://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]", $r9);	specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r11, r5);	$r12 = virtualinvoke r0.<java.io.IOException: java.lang.StackTraceElement[] getStackTrace()>();	virtualinvoke $r7.<java.io.IOException: void setStackTrace(java.lang.StackTraceElement[])>($r12);	return $r7
;block_num 5