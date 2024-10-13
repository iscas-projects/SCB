(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1233 0)
(declare-sort var3863 0)
(declare-sort var2314 0)
(declare-sort var3021 0)
(declare-sort var3706 0)
(declare-sort var2991 0)
(declare-sort var204 0)
(declare-sort var1048 0)
(declare-sort var3530 0)
(declare-sort var3815 0)
(declare-sort var896 0)
(declare-sort var1116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun url/-1187105021 (var1233) var3863)
(declare-fun toString/-1839352374 (var3863) String)
(declare-fun var2314_stripLastPathElement/-530092225 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3863-init () var3863)
(declare-fun errMgr/787585255 (var2991) var3706)
(declare-fun cast-from-var1233-to-var2991 (var1233) var2991)
(declare-fun runTimeError/-1488906518 (var3706 var1048 var3530 var204 var3815 var896) void)
(declare-fun cast-from-var3021-to-var3815 (var3021) var3815)
(declare-fun cast-from-String-to-var896 (String) var896)
(declare-const null-var1233 var1233)
(declare-const null-var3021 var3021)
(declare-const var204-INVALID_TEMPLATE_NAME var204)
(declare-const null-NullType var1116)
(declare-const null-var1048 var1048)
(declare-const null-var3530 var3530)
(declare-const var3034 var1233) ; Statement: r0 := @this: org.stringtemplate.v4.STGroupFile 
(assert (not (= var3034 null-var1233)))
(define-const var1889 var3863 (url/-1187105021 var3034)) ; Statement: $r1 = r0.<org.stringtemplate.v4.STGroupFile: java.net.URL url> 
(assert true)
(define-const var2985 String (toString/-1839352374 var1889)) ; Statement: $r2 = virtualinvoke $r1.<java.net.URL: java.lang.String toString()>() 
(define-const var1966 String (var2314_stripLastPathElement/-530092225 var2985)) ; Statement: r10 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String stripLastPathElement(java.lang.String)>($r2) 
(assert true)
(define-const var1210 Bool (endsWith/985337093 var1966 ".jar!")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean endsWith(java.lang.String)>(".jar!") 
 ; Statement: if $z0 == 0 goto $r3 = new java.net.URL 
(assert (= (ite var1210 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3128 var3863 var3863-init) ; Statement: $r3 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3242 var3021) ; Statement: $r7 := @caughtexception 
(assert (not (= var3242 null-var3021)))
(define-const var1492 var3706 (errMgr/787585255 (cast-from-var1233-to-var2991 var3034))) ; Statement: $r9 = r0.<org.stringtemplate.v4.STGroupFile: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var143 var204 var204-INVALID_TEMPLATE_NAME) ; Statement: $r8 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType INVALID_TEMPLATE_NAME> 
(assert true)
;(assert (runTimeError/-1488906518 var1492 null-var1048 null-var3530 var143 (cast-from-var3021-to-var3815 var3242) (cast-from-String-to-var896 var1966))) ; Statement: virtualinvoke $r9.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, null, $r8, $r7, r10) 

(declare-const var1492!1 var3706)
(declare-const var84 var1116)
(declare-const var84!1 var1116)
(declare-const var143!1 var204)
(declare-const var3242!1 var3021)
(declare-const var1966!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {url/-1187105021=([org.stringtemplate.v4.STGroupFile], java.net.URL), toString/-1839352374=([java.net.URL], java.lang.String), var2314_stripLastPathElement/-530092225=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3863-init=([], java.net.URL), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), cast-from-var1233-to-var2991=([org.stringtemplate.v4.STGroupFile], org.stringtemplate.v4.STGroup), runTimeError/-1488906518=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, org.stringtemplate.v4.misc.ErrorType, java.lang.Throwable, java.lang.Object], void), cast-from-var3021-to-var3815=([java.net.MalformedURLException], java.lang.Throwable), cast-from-String-to-var896=([java.lang.String], java.lang.Object)}
; {var1233=org.stringtemplate.v4.STGroupFile, var3034=r0, var3863=java.net.URL, var1889=$r1, var2985=$r2, var2314=org.stringtemplate.v4.misc.Misc, var1966=r10, var1210=$z0, var3128=$r3, var3021=java.net.MalformedURLException, var3242=$r7, var3706=org.stringtemplate.v4.misc.ErrorManager, var2991=org.stringtemplate.v4.STGroup, var1492=$r9, var204=org.stringtemplate.v4.misc.ErrorType, var143=$r8, var1048=org.stringtemplate.v4.Interpreter, var3530=org.stringtemplate.v4.InstanceScope, var3815=java.lang.Throwable, var896=java.lang.Object, var84=null, var1116=null_type}
; {org.stringtemplate.v4.STGroupFile=var1233, r0=var3034, java.net.URL=var3863, $r1=var1889, $r2=var2985, org.stringtemplate.v4.misc.Misc=var2314, r10=var1966, $z0=var1210, $r3=var3128, java.net.MalformedURLException=var3021, $r7=var3242, org.stringtemplate.v4.misc.ErrorManager=var3706, org.stringtemplate.v4.STGroup=var2991, $r9=var1492, org.stringtemplate.v4.misc.ErrorType=var204, $r8=var143, org.stringtemplate.v4.Interpreter=var1048, org.stringtemplate.v4.InstanceScope=var3530, java.lang.Throwable=var3815, java.lang.Object=var896, null=var84, null_type=var1116}
;seq <java.net.URL: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.STGroupFile;	$r1 = r0.<org.stringtemplate.v4.STGroupFile: java.net.URL url>;	$r2 = virtualinvoke $r1.<java.net.URL: java.lang.String toString()>();	r10 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String stripLastPathElement(java.lang.String)>($r2);	$z0 = virtualinvoke r10.<java.lang.String: boolean endsWith(java.lang.String)>(".jar!");	if $z0 == 0 goto $r3 = new java.net.URL;	$r3 = new java.net.URL;	$r7 := @caughtexception;	$r9 = r0.<org.stringtemplate.v4.STGroupFile: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r8 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType INVALID_TEMPLATE_NAME>;	virtualinvoke $r9.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, null, $r8, $r7, r10);	return null
;block_num 3