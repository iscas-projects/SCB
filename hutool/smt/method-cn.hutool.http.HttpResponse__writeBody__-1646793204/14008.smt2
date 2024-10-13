(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var897 0)
(declare-sort var1825 0)
(declare-sort var2731 0)
(declare-sort var752 0)
(declare-sort var1407 0)
(declare-sort var845 0)
(declare-sort var77 0)
(declare-sort var2303 0)
(declare-sort var920 0)
(declare-sort var1618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1407-init () (Array Int var1407))
(declare-fun var845_notNull/515149844 (var1407 String (Array Int var1407)) var1407)
(declare-fun cast-from-var1825-to-var1407 (var1825) var1407)
(declare-fun completeFileNameFromHeader/1469726025 (var897 var1825) var1825)
(declare-fun var77_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getName/1128186653 (var1825) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1825-init () var1825)
(declare-fun getParentFile/-182598033 (var1825) var1825)
(declare-fun <init>/-1833447926 (var1825 var1825 String) void)
(declare-fun var920_del/1777529281 (var1825) Bool)
(declare-fun var1618-init () var1618)
(declare-fun <init>/1401653166 (var1618 var2303) void)
(declare-const null-var897 var897)
(declare-const null-var1825 var1825)
(declare-const null-String String)
(declare-const null-var752 var752)
(declare-const null-var2303 var2303)
(declare-const var885 var897) ; Statement: r2 := @this: cn.hutool.http.HttpResponse 
(assert (not (= var885 null-var897)))
(declare-const var3085 var1825) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3085 null-var1825)))
(declare-const var3862 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var3862 null-String)))
(declare-const var1196 var752) ; Statement: r8 := @parameter2: cn.hutool.core.io.StreamProgress 
(assert (not (= var1196 null-var752)))
(define-const var611 (Array Int var1407) arr-var1407-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var845_notNull/515149844 (cast-from-var1825-to-var1407 var3085) "[targetFileOrDir] must be not null!" var611)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "[targetFileOrDir] must be not null!", $r1) 

(declare-const var3085!1 var1825)
(declare-const var3893 String)
(declare-const var611!1 (Array Int var1407))
(assert true)
(define-const var2864 var1825 (completeFileNameFromHeader/1469726025 var885 var3085!1)) ; Statement: r14 = virtualinvoke r2.<cn.hutool.http.HttpResponse: java.io.File completeFileNameFromHeader(java.io.File)>(r0) 
(define-const var661 Bool (var77_isBlank/-1569658263 (cast-from-String-to-String var3862))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r13) 
 ; Statement: if $z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r13, ".") 
(assert (not (= (ite var661 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var873 String ".temp") ; Statement: r15 = ".temp" 
 ; Statement: goto [?= $r9 = virtualinvoke r14.<java.io.File: java.lang.String getName()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2509 String (getName/1128186653 var2864)) ; Statement: $r9 = virtualinvoke r14.<java.io.File: java.lang.String getName()>() 
(define-const var1841 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1841)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1841!1 String)
(assert (= var1841!1 ""))
(assert true)
(define-const var70 String (append/672562846 var1841!1 var2509)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1841!2 String)
(assert (= var1841!2 (str.++ var1841!1 var2509)))
(assert true)
(define-const var1207 String (append/672562846 var70 var873)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var70!1 String)
(assert (= var70!1 (str.++ var70 var873)))
(assert true)
(define-const var2531 String (toString/-2075883882 var1207)) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3913 var1825 var1825-init) ; Statement: $r6 = new java.io.File 
(assert true)
(define-const var2688 var1825 (getParentFile/-182598033 var2864)) ; Statement: $r7 = virtualinvoke r14.<java.io.File: java.io.File getParentFile()>() 
(assert true)
;(assert (<init>/-1833447926 var3913 var2688 var2531)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>($r7, $r10) 

(declare-const var3913!1 var1825)
(declare-const var2688!1 var1825)
(declare-const var2531!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2193 var2303) ; Statement: $r11 := @caughtexception 
(assert (not (= var2193 null-var2303)))
;(assert (var920_del/1777529281 var3913!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r6) 

(declare-const var3913!2 var1825)
(define-const var1525 var1618 var1618-init) ; Statement: $r12 = new cn.hutool.http.HttpException 
(assert true)
;(assert (<init>/1401653166 var1525 var2193)) ; Statement: specialinvoke $r12.<cn.hutool.http.HttpException: void <init>(java.lang.Throwable)>($r11) 

(declare-const var1525!1 var1618)
(declare-const var2193!1 var2303)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1407-init=([], java.lang.Object[]), var845_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var1825-to-var1407=([java.io.File], java.lang.Object), completeFileNameFromHeader/1469726025=([cn.hutool.http.HttpResponse, java.io.File], java.io.File), var77_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getName/1128186653=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1825-init=([], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var920_del/1777529281=([java.io.File], boolean), var1618-init=([], cn.hutool.http.HttpException), <init>/1401653166=([cn.hutool.http.HttpException, java.lang.Throwable], void)}
; {var897=cn.hutool.http.HttpResponse, var885=r2, var1825=java.io.File, var3085=r0, var3862=r13, var2731=null_type, var752=cn.hutool.core.io.StreamProgress, var1196=r8, var1407=java.lang.Object, var611=$r1, var845=cn.hutool.core.lang.Assert, var3893="[targetFileOrDir] must be not null!", var2864=r14, var77=cn.hutool.core.text.CharSequenceUtil, var661=$z0, var873=r15, var2509=$r9, var1841=$r3, var70=$r4, var1207=$r5, var2531=$r10, var3913=$r6, var2688=$r7, var2303=java.lang.Throwable, var2193=$r11, var920=cn.hutool.core.io.FileUtil, var1618=cn.hutool.http.HttpException, var1525=$r12}
; {cn.hutool.http.HttpResponse=var897, r2=var885, java.io.File=var1825, r0=var3085, r13=var3862, null_type=var2731, cn.hutool.core.io.StreamProgress=var752, r8=var1196, java.lang.Object=var1407, $r1=var611, cn.hutool.core.lang.Assert=var845, "[targetFileOrDir] must be not null!"=var3893, r14=var2864, cn.hutool.core.text.CharSequenceUtil=var77, $z0=var661, r15=var873, $r9=var2509, $r3=var1841, $r4=var70, $r5=var1207, $r10=var2531, $r6=var3913, $r7=var2688, java.lang.Throwable=var2303, $r11=var2193, cn.hutool.core.io.FileUtil=var920, cn.hutool.http.HttpException=var1618, $r12=var1525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.http.HttpResponse;	r0 := @parameter0: java.io.File;	r13 := @parameter1: java.lang.String;	r8 := @parameter2: cn.hutool.core.io.StreamProgress;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "[targetFileOrDir] must be not null!", $r1);	r14 = virtualinvoke r2.<cn.hutool.http.HttpResponse: java.io.File completeFileNameFromHeader(java.io.File)>(r0);	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r13);	if $z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r13, ".");	r15 = ".temp";	goto [?= $r9 = virtualinvoke r14.<java.io.File: java.lang.String getName()>()];	$r9 = virtualinvoke r14.<java.io.File: java.lang.String getName()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.io.File;	$r7 = virtualinvoke r14.<java.io.File: java.io.File getParentFile()>();	specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>($r7, $r10);	$r11 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r6);	$r12 = new cn.hutool.http.HttpException;	specialinvoke $r12.<cn.hutool.http.HttpException: void <init>(java.lang.Throwable)>($r11);	throw $r12
;block_num 4