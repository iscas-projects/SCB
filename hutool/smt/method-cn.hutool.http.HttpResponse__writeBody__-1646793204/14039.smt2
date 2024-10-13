(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var787 0)
(declare-sort var341 0)
(declare-sort var3919 0)
(declare-sort var3405 0)
(declare-sort var21 0)
(declare-sort var3485 0)
(declare-sort var3291 0)
(declare-sort var3313 0)
(declare-sort var1853 0)
(declare-sort var526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var21-init () (Array Int var21))
(declare-fun var3485_notNull/515149844 (var21 String (Array Int var21)) var21)
(declare-fun cast-from-var341-to-var21 (var341) var21)
(declare-fun completeFileNameFromHeader/1469726025 (var787 var341) var341)
(declare-fun var3291_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3291_addPrefixIfNot/-1816210460 (String String) String)
(declare-fun getName/1128186653 (var341) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var341-init () var341)
(declare-fun getParentFile/-182598033 (var341) var341)
(declare-fun <init>/-1833447926 (var341 var341 String) void)
(declare-fun var1853_del/1777529281 (var341) Bool)
(declare-fun var526-init () var526)
(declare-fun <init>/1401653166 (var526 var3313) void)
(declare-const null-var787 var787)
(declare-const null-var341 var341)
(declare-const null-String String)
(declare-const null-var3405 var3405)
(declare-const null-var3313 var3313)
(declare-const var890 var787) ; Statement: r2 := @this: cn.hutool.http.HttpResponse 
(assert (not (= var890 null-var787)))
(declare-const var556 var341) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var556 null-var341)))
(declare-const var1728 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1728 null-String)))
(declare-const var2301 var3405) ; Statement: r8 := @parameter2: cn.hutool.core.io.StreamProgress 
(assert (not (= var2301 null-var3405)))
(define-const var3451 (Array Int var21) arr-var21-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3485_notNull/515149844 (cast-from-var341-to-var21 var556) "[targetFileOrDir] must be not null!" var3451)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "[targetFileOrDir] must be not null!", $r1) 

(declare-const var556!1 var341)
(declare-const var10 String)
(declare-const var3451!1 (Array Int var21))
(assert true)
(define-const var1327 var341 (completeFileNameFromHeader/1469726025 var890 var556!1)) ; Statement: r14 = virtualinvoke r2.<cn.hutool.http.HttpResponse: java.io.File completeFileNameFromHeader(java.io.File)>(r0) 
(define-const var496 Bool (var3291_isBlank/-1569658263 (cast-from-String-to-String var1728))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r13) 
 ; Statement: if $z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r13, ".") 
(assert (= (ite var496 1 0) 0)) ; Cond: $z0 == 0 
(define-const var220 String (var3291_addPrefixIfNot/-1816210460 (cast-from-String-to-String var1728) (cast-from-String-to-String "."))) ; Statement: r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r13, ".") 
(assert true) ; Non Conditional
(assert true)
(define-const var1989 String (getName/1128186653 var1327)) ; Statement: $r9 = virtualinvoke r14.<java.io.File: java.lang.String getName()>() 
(define-const var15 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var15)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var15!1 String)
(assert (= var15!1 ""))
(assert true)
(define-const var2576 String (append/672562846 var15!1 var1989)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var15!2 String)
(assert (= var15!2 (str.++ var15!1 var1989)))
(assert true)
(define-const var1268 String (append/672562846 var2576 var220)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var2576!1 String)
(assert (= var2576!1 (str.++ var2576 var220)))
(assert true)
(define-const var3634 String (toString/-2075883882 var1268)) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1094 var341 var341-init) ; Statement: $r6 = new java.io.File 
(assert true)
(define-const var2132 var341 (getParentFile/-182598033 var1327)) ; Statement: $r7 = virtualinvoke r14.<java.io.File: java.io.File getParentFile()>() 
(assert true)
;(assert (<init>/-1833447926 var1094 var2132 var3634)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>($r7, $r10) 

(declare-const var1094!1 var341)
(declare-const var2132!1 var341)
(declare-const var3634!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3345 var3313) ; Statement: $r11 := @caughtexception 
(assert (not (= var3345 null-var3313)))
;(assert (var1853_del/1777529281 var1094!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r6) 

(declare-const var1094!2 var341)
(define-const var2163 var526 var526-init) ; Statement: $r12 = new cn.hutool.http.HttpException 
(assert true)
;(assert (<init>/1401653166 var2163 var3345)) ; Statement: specialinvoke $r12.<cn.hutool.http.HttpException: void <init>(java.lang.Throwable)>($r11) 

(declare-const var2163!1 var526)
(declare-const var3345!1 var3313)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var21-init=([], java.lang.Object[]), var3485_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var341-to-var21=([java.io.File], java.lang.Object), completeFileNameFromHeader/1469726025=([cn.hutool.http.HttpResponse, java.io.File], java.io.File), var3291_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3291_addPrefixIfNot/-1816210460=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), getName/1128186653=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var341-init=([], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1853_del/1777529281=([java.io.File], boolean), var526-init=([], cn.hutool.http.HttpException), <init>/1401653166=([cn.hutool.http.HttpException, java.lang.Throwable], void)}
; {var787=cn.hutool.http.HttpResponse, var890=r2, var341=java.io.File, var556=r0, var1728=r13, var3919=null_type, var3405=cn.hutool.core.io.StreamProgress, var2301=r8, var21=java.lang.Object, var3451=$r1, var3485=cn.hutool.core.lang.Assert, var10="[targetFileOrDir] must be not null!", var1327=r14, var3291=cn.hutool.core.text.CharSequenceUtil, var496=$z0, var220=r15, var1989=$r9, var15=$r3, var2576=$r4, var1268=$r5, var3634=$r10, var1094=$r6, var2132=$r7, var3313=java.lang.Throwable, var3345=$r11, var1853=cn.hutool.core.io.FileUtil, var526=cn.hutool.http.HttpException, var2163=$r12}
; {cn.hutool.http.HttpResponse=var787, r2=var890, java.io.File=var341, r0=var556, r13=var1728, null_type=var3919, cn.hutool.core.io.StreamProgress=var3405, r8=var2301, java.lang.Object=var21, $r1=var3451, cn.hutool.core.lang.Assert=var3485, "[targetFileOrDir] must be not null!"=var10, r14=var1327, cn.hutool.core.text.CharSequenceUtil=var3291, $z0=var496, r15=var220, $r9=var1989, $r3=var15, $r4=var2576, $r5=var1268, $r10=var3634, $r6=var1094, $r7=var2132, java.lang.Throwable=var3313, $r11=var3345, cn.hutool.core.io.FileUtil=var1853, cn.hutool.http.HttpException=var526, $r12=var2163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.http.HttpResponse;	r0 := @parameter0: java.io.File;	r13 := @parameter1: java.lang.String;	r8 := @parameter2: cn.hutool.core.io.StreamProgress;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "[targetFileOrDir] must be not null!", $r1);	r14 = virtualinvoke r2.<cn.hutool.http.HttpResponse: java.io.File completeFileNameFromHeader(java.io.File)>(r0);	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r13);	if $z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r13, ".");	r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r13, ".");	$r9 = virtualinvoke r14.<java.io.File: java.lang.String getName()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.io.File;	$r7 = virtualinvoke r14.<java.io.File: java.io.File getParentFile()>();	specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>($r7, $r10);	$r11 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r6);	$r12 = new cn.hutool.http.HttpException;	specialinvoke $r12.<cn.hutool.http.HttpException: void <init>(java.lang.Throwable)>($r11);	throw $r12
;block_num 4