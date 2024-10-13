(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1252 0)
(declare-sort var1202 0)
(declare-sort var2885 0)
(declare-sort var3356 0)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun configurationFactory/-1725803046 (var1252) ClassObject)
(declare-fun var2885-init () var2885)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3356) String)
(declare-fun cast-from-ClassObject-to-var3356 (ClassObject) var3356)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var2885 String var2414) void)
(declare-fun cast-from-var1202-to-var2414 (var1202) var2414)
(declare-const null-var1252 var1252)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1202 var1202)
(declare-const var2174 var1252) ; Statement: r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair 
(assert (not (= var2174 null-var1252)))
(define-const var1611 ClassObject (configurationFactory/-1725803046 var2174)) ; Statement: $r1 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.Class configurationFactory> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.Class configurationFactory> 
(assert (not (not (= var1611 null-ClassObject)))) ; Negate: Cond: $r1 != null  
(declare-const var3619 var1202) ; Statement: $r32 := @caughtexception 
(assert (not (= var3619 null-var1202)))
(define-const var1569 var2885 var2885-init) ; Statement: $r33 = new org.apache.ibatis.executor.ExecutorException 
(define-const var417 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var417)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var417!1 String)
(assert (= var417!1 ""))
(assert true)
(define-const var1037 String (append/672562846 var417!1 "Cannot get Configuration as factory method [")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get Configuration as factory method [") 
(declare-const var417!2 String)
(assert (= var417!2 (str.++ var417!1 "Cannot get Configuration as factory method [")))
(define-const var2857 ClassObject (configurationFactory/-1725803046 var2174)) ; Statement: $r35 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.Class configurationFactory> 
(assert true)
(define-const var718 String (append/-1031950772 var1037 (cast-from-ClassObject-to-var3356 var2857))) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35) 
(declare-const var1037!1 String)
(assert (str.prefixof var1037 var1037!1))
(assert true)
(define-const var2353 String (append/672562846 var718 "]#[")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]#[") 
(declare-const var718!1 String)
(assert (= var718!1 (str.++ var718 "]#[")))
(assert true)
(define-const var1128 String (append/672562846 var2353 "getConfiguration")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getConfiguration") 
(declare-const var2353!1 String)
(assert (= var2353!1 (str.++ var2353 "getConfiguration")))
(assert true)
(define-const var1991 String (append/672562846 var1128 "] threw an exception.")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] threw an exception.") 
(declare-const var1128!1 String)
(assert (= var1128!1 (str.++ var1128 "] threw an exception.")))
(assert true)
(define-const var2337 String (toString/-2075883882 var1991)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var1569 var2337 (cast-from-var1202-to-var2414 var3619))) ; Statement: specialinvoke $r33.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r41, $r32) 

(declare-const var1569!1 var2885)
(declare-const var2337!1 String)
(declare-const var3619!1 var1202)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {configurationFactory/-1725803046=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], java.lang.Class), var2885-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3356=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var1202-to-var2414=([java.lang.Exception], java.lang.Throwable)}
; {var1252=org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair, var2174=r0, var1611=$r1, var1202=java.lang.Exception, var3619=$r32, var2885=org.apache.ibatis.executor.ExecutorException, var1569=$r33, var417=$r34, var1037=$r36, var2857=$r35, var3356=java.lang.Object, var718=$r37, var2353=$r38, var1128=$r39, var1991=$r40, var2337=$r41, var2414=java.lang.Throwable}
; {org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair=var1252, r0=var2174, $r1=var1611, java.lang.Exception=var1202, $r32=var3619, org.apache.ibatis.executor.ExecutorException=var2885, $r33=var1569, $r34=var417, $r36=var1037, $r35=var2857, java.lang.Object=var3356, $r37=var718, $r38=var2353, $r39=var1128, $r40=var1991, $r41=var2337, java.lang.Throwable=var2414}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair;	$r1 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.Class configurationFactory>;	if $r1 != null goto $r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.Class configurationFactory>;	$r32 := @caughtexception;	$r33 = new org.apache.ibatis.executor.ExecutorException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get Configuration as factory method [");	$r35 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: java.lang.Class configurationFactory>;	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]#[");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getConfiguration");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] threw an exception.");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r41, $r32);	throw $r33
;block_num 2