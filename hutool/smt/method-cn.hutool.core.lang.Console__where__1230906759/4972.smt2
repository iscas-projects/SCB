(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3150 0)
(declare-sort var1002 0)
(declare-sort var552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3150-init () var3150)
(declare-fun <init>/-345500299 (var3150) void)
(declare-fun getStackTrace/1942967699 (var3150) (Array Int var1002))
(declare-fun getClassName/1384636042 (var1002) String)
(declare-fun getMethodName/1120671905 (var1002) String)
(declare-fun getFileName/-547794010 (var1002) String)
(declare-fun getLineNumber/1148630320 (var1002) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun arr-var552-init () (Array Int var552))
(declare-fun cast-from-String-to-var552 (String) var552)
(declare-fun cast-from-Int-to-var552 (Int) var552)
(declare-fun String_format/1339386452 (String (Array Int var552)) String)
(declare-const null-__Array__Int__var552__ (Array Int var552))
(define-const var717 var3150 var3150-init) ; Statement: $r0 = new java.lang.Throwable 
(assert true)
;(assert (<init>/-345500299 var717)) ; Statement: specialinvoke $r0.<java.lang.Throwable: void <init>()>() 

(declare-const var717!1 var3150)
(assert true)
(define-const var205 (Array Int var1002) (getStackTrace/1942967699 var717!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.Throwable: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var2877 var1002 (select var205 1)) ; Statement: r2 = $r1[1] 
(assert true)
(define-const var1438 String (getClassName/1384636042 var2877)) ; Statement: r3 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getClassName()>() 
(assert true)
(define-const var185 String (getMethodName/1120671905 var2877)) ; Statement: r4 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getMethodName()>() 
(assert true)
(define-const var2324 String (getFileName/-547794010 var2877)) ; Statement: r5 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getFileName()>() 
(assert true)
(define-const var162 Int (getLineNumber/1148630320 var2877)) ; Statement: $i0 = virtualinvoke r2.<java.lang.StackTraceElement: int getLineNumber()>() 
(define-const var666 Int (Int_valueOf/-1371140006 var162)) ; Statement: r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(define-const var2680 (Array Int var552) arr-var552-init) ; Statement: $r7 = newarray (java.lang.Object)[4] 
(declare-const var2680!1 (Array Int var552))
(assert (not (= var2680!1 null-__Array__Int__var552__)))
(assert (= (select var2680!1 0) (cast-from-String-to-var552 var1438))) ; Statement: $r7[0] = r3 
(declare-const var2680!2 (Array Int var552))
(assert (not (= var2680!2 null-__Array__Int__var552__)))
(assert (= (select var2680!2 1) (cast-from-String-to-var552 var185))) ; Statement: $r7[1] = r4 
(declare-const var2680!3 (Array Int var552))
(assert (not (= var2680!3 null-__Array__Int__var552__)))
(assert (= (select var2680!3 2) (cast-from-String-to-var552 var2324))) ; Statement: $r7[2] = r5 
(declare-const var2680!4 (Array Int var552))
(assert (not (= var2680!4 null-__Array__Int__var552__)))
(assert (= (select var2680!4 3) (cast-from-Int-to-var552 var666))) ; Statement: $r7[3] = r6 
(define-const var284 String (String_format/1339386452 "%s.%s(%s:%s)" var2680!4)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s.%s(%s:%s)", $r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3150-init=([], java.lang.Throwable), <init>/-345500299=([java.lang.Throwable], void), getStackTrace/1942967699=([java.lang.Throwable], java.lang.StackTraceElement[]), getClassName/1384636042=([java.lang.StackTraceElement], java.lang.String), getMethodName/1120671905=([java.lang.StackTraceElement], java.lang.String), getFileName/-547794010=([java.lang.StackTraceElement], java.lang.String), getLineNumber/1148630320=([java.lang.StackTraceElement], int), Int_valueOf/-1371140006=([int], java.lang.Integer), arr-var552-init=([], java.lang.Object[]), cast-from-String-to-var552=([java.lang.String], java.lang.Object), cast-from-Int-to-var552=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3150=java.lang.Throwable, var717=$r0, var1002=java.lang.StackTraceElement, var205=$r1, var2877=r2, var1438=r3, var185=r4, var2324=r5, var162=$i0, var666=r6, var552=java.lang.Object, var2680=$r7, var284=$r8}
; {java.lang.Throwable=var3150, $r0=var717, java.lang.StackTraceElement=var1002, $r1=var205, r2=var2877, r3=var1438, r4=var185, r5=var2324, $i0=var162, r6=var666, java.lang.Object=var552, $r7=var2680, $r8=var284}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts $r0 = new java.lang.Throwable;	specialinvoke $r0.<java.lang.Throwable: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.Throwable: java.lang.StackTraceElement[] getStackTrace()>();	r2 = $r1[1];	r3 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getClassName()>();	r4 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getMethodName()>();	r5 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getFileName()>();	$i0 = virtualinvoke r2.<java.lang.StackTraceElement: int getLineNumber()>();	r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r7 = newarray (java.lang.Object)[4];	$r7[0] = r3;	$r7[1] = r4;	$r7[2] = r5;	$r7[3] = r6;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s.%s(%s:%s)", $r7);	return $r8
;block_num 1