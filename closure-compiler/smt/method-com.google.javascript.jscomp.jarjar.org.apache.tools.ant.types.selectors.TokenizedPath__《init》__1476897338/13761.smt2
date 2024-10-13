(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3471 0)
(declare-sort var478 0)
(declare-sort var256 0)
(declare-sort var1153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var256) void)
(declare-fun cast-from-var3471-to-var256 (var3471) var256)
(declare-fun path/472800384 (var3471) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun tokenizedPath/472800384 (var3471) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1153_arraycopy/-325913181 (var256 Int var256 Int Int) void)
(declare-fun cast-from-__Array__Int__String__-to-var256 ((Array Int String)) var256)
(declare-const null-var3471 var3471)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1337 var3471) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath 
(assert (not (= var1337 null-var3471)))
(declare-const var997 var3471) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath 
(assert (not (= var997 null-var3471)))
(declare-const var1555 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1555 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3471-to-var256 var1337))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1337!1 var3471)
(define-const var45 String (path/472800384 var997)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path> 
(assert true)
(define-const var1593 Bool (isEmpty/-1285796103 var45)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r25 = new java.lang.StringBuilder 
(assert (not (= (ite var1593 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2369 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2369)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2369!1 String)
(assert (= var2369!1 ""))
(define-const var3692 String (path/472800384 var997)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path> 
(assert true)
(define-const var413 String (append/672562846 var2369!1 var3692)) ; Statement: $r6 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2369!2 String)
(assert (= var2369!2 (str.++ var2369!1 var3692)))
(assert true)
(define-const var1434 String (append/672562846 var413 var1555)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var413!1 String)
(assert (= var413!1 (str.++ var413 var1555)))
(assert true)
(define-const var2298 String (toString/-2075883882 var1434)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1337!2 var3471)
(assert (not (= var1337!2 null-var3471)))
(assert (= (path/472800384 var1337!2) var2298)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path> = $r8 
(assert true) ; Non Conditional
(define-const var3487 (Array Int String) (tokenizedPath/472800384 var997)) ; Statement: $r17 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> 
(define-const var2730 Int (getLength-Arr-String-1 var3487)) ; Statement: $i5 = lengthof $r17 
(define-const var1295 Int (+ var2730 1)) ; Statement: $i6 = $i5 + 1 
(define-const var3179 (Array Int String) arr-String-init) ; Statement: $r18 = newarray (java.lang.String)[$i6] 
(declare-const var1337!3 var3471)
(assert (not (= var1337!3 null-var3471)))
(assert (= (tokenizedPath/472800384 var1337!3) var3179)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> = $r18 
(define-const var589 (Array Int String) (tokenizedPath/472800384 var997)) ; Statement: $r19 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> 
(define-const var65 (Array Int String) (tokenizedPath/472800384 var1337!3)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> 
(define-const var2586 (Array Int String) (tokenizedPath/472800384 var997)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> 
(define-const var536 Int (getLength-Arr-String-1 var2586)) ; Statement: $i7 = lengthof $r21 
;(assert (var1153_arraycopy/-325913181 (cast-from-__Array__Int__String__-to-var256 var589) 0 (cast-from-__Array__Int__String__-to-var256 var65) 0 var536)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r19, 0, $r20, 0, $i7) 

(declare-const var589!1 (Array Int String))
(declare-const var1739 Int)
(declare-const var65!1 (Array Int String))
(declare-const var1739!1 Int)
(declare-const var536!1 Int)
(define-const var604 (Array Int String) (tokenizedPath/472800384 var1337!3)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> 
(define-const var2838 (Array Int String) (tokenizedPath/472800384 var997)) ; Statement: $r23 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> 
(define-const var158 Int (getLength-Arr-String-1 var2838)) ; Statement: $i8 = lengthof $r23 
(declare-const var604!1 (Array Int String))
(assert (not (= var604!1 null-__Array__Int__String__)))
(assert (= (select var604!1 var158) var1555)) ; Statement: $r22[$i8] = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3471-to-var256=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath], java.lang.Object), path/472800384=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), tokenizedPath/472800384=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-String-init=([], java.lang.String[]), var1153_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__String__-to-var256=([java.lang.String[]], java.lang.Object)}
; {var3471=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath, var1337=r0, var997=r1, var1555=r5, var478=null_type, var256=java.lang.Object, var45=$r2, var1593=$z0, var2369=$r25, var3692=$r4, var413=$r6, var1434=$r7, var2298=$r8, var3487=$r17, var2730=$i5, var1295=$i6, var3179=$r18, var589=$r19, var65=$r20, var2586=$r21, var536=$i7, var1153=java.lang.System, var1739=0, var604=$r22, var2838=$r23, var158=$i8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath=var3471, r0=var1337, r1=var997, r5=var1555, null_type=var478, java.lang.Object=var256, $r2=var45, $z0=var1593, $r25=var2369, $r4=var3692, $r6=var413, $r7=var1434, $r8=var2298, $r17=var3487, $i5=var2730, $i6=var1295, $r18=var3179, $r19=var589, $r20=var65, $r21=var2586, $i7=var536, java.lang.System=var1153, 0=var1739, $r22=var604, $r23=var2838, $i8=var158}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath;	r5 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r25 = new java.lang.StringBuilder;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path>;	$r6 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String path> = $r8;	$r17 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath>;	$i5 = lengthof $r17;	$i6 = $i5 + 1;	$r18 = newarray (java.lang.String)[$i6];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath> = $r18;	$r19 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath>;	$r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath>;	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath>;	$i7 = lengthof $r21;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r19, 0, $r20, 0, $i7);	$r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath>;	$r23 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String[] tokenizedPath>;	$i8 = lengthof $r23;	$r22[$i8] = r5;	return
;block_num 3