(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2466 0)
(declare-sort var1872 0)
(declare-sort var517 0)
(declare-sort var3597 0)
(declare-sort var1218 0)
(declare-sort var20 0)
(declare-sort var1661 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCause/-638798464 (var3597) var3597)
(declare-fun cast-from-var1872-to-var3597 (var1872) var3597)
(declare-fun getMessage/849299655 (var3597) String)
(declare-fun var1872-init () var1872)
(declare-fun arr-var1661-init () (Array Int var1661))
(declare-fun cast-from-String-to-var1661 (String) var1661)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var1661 (Int) var1661)
(declare-fun String_format/-647569892 (var20 String (Array Int var1661)) String)
(declare-fun <init>/-252871109 (var1872 String var3597) void)
(declare-fun getStackTrace/1942967699 (var3597) (Array Int var3285))
(declare-fun setStackTrace/558595491 (var3597 (Array Int var3285)) void)
(declare-const null-var2466 var2466)
(declare-const null-var1872 var1872)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1218-JRE_IS_64BIT Bool)
(declare-const var20-ENGLISH var20)
(declare-const null-__Array__Int__var1661__ (Array Int var1661))
(declare-const var1142 var2466) ; Statement: r3 := @this: org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider 
(assert (not (= var1142 null-var2466)))
(declare-const var3959 var1872) ; Statement: r0 := @parameter0: java.io.IOException 
(assert (not (= var3959 null-var1872)))
(declare-const var3812 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3812 null-String)))
(declare-const var747 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var747 null-Int)))
(assert true)
(define-const var1187 var3597 (getCause/-638798464 (cast-from-var1872-to-var3597 var3959))) ; Statement: $r1 = virtualinvoke r0.<java.io.IOException: java.lang.Throwable getCause()>() 
(define-const var2961 Bool false) ; Statement: $z0 = $r1 instanceof java.lang.OutOfMemoryError 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r0.<java.io.IOException: java.lang.String getMessage()>() 
(assert (= (ite var2961 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2023 String (getMessage/849299655 (cast-from-var1872-to-var3597 var3959))) ; Statement: r4 = virtualinvoke r0.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2538 var3597 (getCause/-638798464 (cast-from-var1872-to-var3597 var3959))) ; Statement: r5 = virtualinvoke r0.<java.io.IOException: java.lang.Throwable getCause()>() 
(assert true) ; Non Conditional
(define-const var2919 Bool var1218-JRE_IS_64BIT) ; Statement: $z1 = <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT> 
 ; Statement: if $z1 != 0 goto $z2 = <org.apache.lucene.util.Constants: boolean WINDOWS> 
(assert (not (not (= (ite var2919 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var129 String "MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. ") ; Statement: r6 = "MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. " 
 ; Statement: goto [?= $r7 = new java.io.IOException] 
(assert true) ; Non Conditional
(define-const var651 var1872 var1872-init) ; Statement: $r7 = new java.io.IOException 
(define-const var2966 var20 var20-ENGLISH) ; Statement: $r8 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1762 (Array Int var1661) arr-var1661-init) ; Statement: $r9 = newarray (java.lang.Object)[4] 
(declare-const var1762!1 (Array Int var1661))
(assert (not (= var1762!1 null-__Array__Int__var1661__)))
(assert (= (select var1762!1 0) (cast-from-String-to-var1661 var2023))) ; Statement: $r9[0] = r4 
(declare-const var1762!2 (Array Int var1661))
(assert (not (= var1762!2 null-__Array__Int__var1661__)))
(assert (= (select var1762!2 1) (cast-from-String-to-var1661 var3812))) ; Statement: $r9[1] = r2 
(define-const var1563 Int (Int_valueOf/-1102777585 var747)) ; Statement: $r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var1762!3 (Array Int var1661))
(assert (not (= var1762!3 null-__Array__Int__var1661__)))
(assert (= (select var1762!3 2) (cast-from-Int-to-var1661 var1563))) ; Statement: $r9[2] = $r10 
(declare-const var1762!4 (Array Int var1661))
(assert (not (= var1762!4 null-__Array__Int__var1661__)))
(assert (= (select var1762!4 3) (cast-from-String-to-var1661 var129))) ; Statement: $r9[3] = r6 
(define-const var3352 String (String_format/-647569892 var2966 "%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: https://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]" var1762!4)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: https://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]", $r9) 
(assert true)
;(assert (<init>/-252871109 var651 var3352 var2538)) ; Statement: specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r11, r5) 

(declare-const var651!1 var1872)
(declare-const var3352!1 String)
(declare-const var2538!1 var3597)
(assert true)
(define-const var3360 (Array Int var3285) (getStackTrace/1942967699 (cast-from-var1872-to-var3597 var3959))) ; Statement: $r12 = virtualinvoke r0.<java.io.IOException: java.lang.StackTraceElement[] getStackTrace()>() 
(assert true)
;(assert (setStackTrace/558595491 (cast-from-var1872-to-var3597 var651!1) var3360)) ; Statement: virtualinvoke $r7.<java.io.IOException: void setStackTrace(java.lang.StackTraceElement[])>($r12) 

(declare-const var651!2 var1872)
(declare-const var3360!1 (Array Int var3285))
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var1872-to-var3597=([java.io.IOException], java.lang.Throwable), getMessage/849299655=([java.lang.Throwable], java.lang.String), var1872-init=([], java.io.IOException), arr-var1661-init=([], java.lang.Object[]), cast-from-String-to-var1661=([java.lang.String], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var1661=([java.lang.Long], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void), getStackTrace/1942967699=([java.lang.Throwable], java.lang.StackTraceElement[]), setStackTrace/558595491=([java.lang.Throwable, java.lang.StackTraceElement[]], void)}
; {var2466=org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider, var1142=r3, var1872=java.io.IOException, var3959=r0, var3812=r2, var517=null_type, var747=l0, var3597=java.lang.Throwable, var1187=$r1, var2961=$z0, var2023=r4, var2538=r5, var1218=org.apache.lucene.util.Constants, var2919=$z1, var129=r6, var651=$r7, var20=java.util.Locale, var2966=$r8, var1661=java.lang.Object, var1762=$r9, var1563=$r10, var3352=$r11, var3285=java.lang.StackTraceElement, var3360=$r12}
; {org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider=var2466, r3=var1142, java.io.IOException=var1872, r0=var3959, r2=var3812, null_type=var517, l0=var747, java.lang.Throwable=var3597, $r1=var1187, $z0=var2961, r4=var2023, r5=var2538, org.apache.lucene.util.Constants=var1218, $z1=var2919, r6=var129, $r7=var651, java.util.Locale=var20, $r8=var2966, java.lang.Object=var1661, $r9=var1762, $r10=var1563, $r11=var3352, java.lang.StackTraceElement=var3285, $r12=var3360}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: org.apache.lucene.store.MMapDirectory$MMapIndexInputProvider;	r0 := @parameter0: java.io.IOException;	r2 := @parameter1: java.lang.String;	l0 := @parameter2: long;	$r1 = virtualinvoke r0.<java.io.IOException: java.lang.Throwable getCause()>();	$z0 = $r1 instanceof java.lang.OutOfMemoryError;	if $z0 == 0 goto r4 = virtualinvoke r0.<java.io.IOException: java.lang.String getMessage()>();	r4 = virtualinvoke r0.<java.io.IOException: java.lang.String getMessage()>();	r5 = virtualinvoke r0.<java.io.IOException: java.lang.Throwable getCause()>();	$z1 = <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT>;	if $z1 != 0 goto $z2 = <org.apache.lucene.util.Constants: boolean WINDOWS>;	r6 = "MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. ";	goto [?= $r7 = new java.io.IOException];	$r7 = new java.io.IOException;	$r8 = <java.util.Locale: java.util.Locale ENGLISH>;	$r9 = newarray (java.lang.Object)[4];	$r9[0] = r4;	$r9[1] = r2;	$r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r9[2] = $r10;	$r9[3] = r6;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: https://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]", $r9);	specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r11, r5);	$r12 = virtualinvoke r0.<java.io.IOException: java.lang.StackTraceElement[] getStackTrace()>();	virtualinvoke $r7.<java.io.IOException: void setStackTrace(java.lang.StackTraceElement[])>($r12);	return $r7
;block_num 5