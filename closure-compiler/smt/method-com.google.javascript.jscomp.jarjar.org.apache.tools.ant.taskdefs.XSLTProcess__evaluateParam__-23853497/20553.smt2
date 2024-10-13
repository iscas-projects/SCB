(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1413 0)
(declare-sort var175 0)
(declare-sort var2161 0)
(declare-sort var1508 0)
(declare-sort var143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/2113815301 (var175) String)
(declare-fun getExpression/1080441191 (var175) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1508-init () var1508)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1508 String var143) void)
(declare-fun cast-from-var1508-to-var143 (var1508) var143)
(declare-const null-var1413 var1413)
(declare-const null-var175 var175)
(declare-const null-String String)
(declare-const null-var1508 var1508)
(declare-const var3928 var1413) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var3928 null-var1413)))
(declare-const var2382 var175) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param 
(assert (not (= var2382 null-var175)))
(assert true)
(define-const var995 String (getType/2113815301 var2382)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param: java.lang.String getType()>() 
(assert true)
(define-const var1537 String (getExpression/1080441191 var2382)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param: java.lang.String getExpression()>() 
 ; Statement: if r1 == null goto r25 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType STRING> 
(assert (not (= var995 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2230 Bool (isEmpty/-1285796103 var995)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto r25 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType valueOf(java.lang.String)>(r1) 
(assert (not (= (ite var2230 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var2721 var1508) ; Statement: $r19 := @caughtexception 
(assert (not (= var2721 null-var1508)))
(define-const var401 var1508 var1508-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(define-const var3241 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3241)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3241!1 String)
(assert (= var3241!1 ""))
(assert true)
(define-const var1925 String (append/672562846 var3241!1 "Invalid XSLT parameter type: ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid XSLT parameter type: ") 
(declare-const var3241!2 String)
(assert (= var3241!2 (str.++ var3241!1 "Invalid XSLT parameter type: ")))
(assert true)
(define-const var357 String (append/672562846 var1925 var995)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1925!1 String)
(assert (= var1925!1 (str.++ var1925 var995)))
(assert true)
(define-const var2174 String (toString/-2075883882 var357)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var401 var2174 (cast-from-var1508-to-var143 var2721))) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r24, $r19) 

(declare-const var401!1 var1508)
(declare-const var2174!1 String)
(declare-const var2721!1 var1508)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/2113815301=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param], java.lang.String), getExpression/1080441191=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1508-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1508-to-var143=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1413=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var3928=r10, var175=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param, var2382=r0, var995=r1, var1537=r2, var2161=null_type, var2230=$z1, var1508=java.lang.IllegalArgumentException, var2721=$r19, var401=$r20, var3241=$r21, var1925=$r22, var357=$r23, var2174=$r24, var143=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var1413, r10=var3928, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param=var175, r0=var2382, r1=var995, r2=var1537, null_type=var2161, $z1=var2230, java.lang.IllegalArgumentException=var1508, $r19=var2721, $r20=var401, $r21=var3241, $r22=var1925, $r23=var357, $r24=var2174, java.lang.Throwable=var143}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param: java.lang.String getType()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Param: java.lang.String getExpression()>();	if r1 == null goto r25 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType STRING>;	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto r25 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$ParamType valueOf(java.lang.String)>(r1);	$r19 := @caughtexception;	$r20 = new java.lang.IllegalArgumentException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid XSLT parameter type: ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r24, $r19);	throw $r20
;block_num 3