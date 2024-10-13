(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var332 0)
(declare-sort var513 0)
(declare-sort var384 0)
(declare-sort var3796 0)
(declare-sort var2396 0)
(declare-sort var812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var513_checkArgument/-972017905 (Bool var384) void)
(declare-fun cast-from-String-to-var384 (String) var384)
(declare-fun var3796-init () var3796)
(declare-fun var2396-init () var2396)
(declare-fun <init>/-1507991564 (var2396 String) void)
(declare-fun <init>/1535172608 (var3796 var812) void)
(declare-fun cast-from-var2396-to-var812 (var2396) var812)
(declare-const null-String String)
(declare-const var1429 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1429 null-String)))
(assert true)
(define-const var3905 Int (length/-134980193 var1429)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $z0 = 0 
(assert (not (= var3905 0))) ; Negate: Cond: $i0 == 0  
(define-const var139 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.")] 
(assert true) ; Non Conditional
;(assert (var513_checkArgument/-972017905 var139 (cast-from-String-to-var384 "The separator may not be the empty string."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.") 

(declare-const var139!1 Bool)
(declare-const var2136 String)
(assert true)
(define-const var479 Int (length/-134980193 var1429)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter 
(assert (not (= var479 1))) ; Cond: $i1 != 1 
(define-const var1119 var3796 var3796-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter 
(define-const var2317 var2396 var2396-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2 
(assert true)
;(assert (<init>/-1507991564 var2317 var1429)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: void <init>(java.lang.String)>(r0) 

(declare-const var2317!1 var2396)
(declare-const var1429!1 String)
(assert true)
;(assert (<init>/1535172608 var1119 (cast-from-var2396-to-var812 var2317!1))) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy)>($r2) 

(declare-const var1119!1 var3796)
(declare-const var2317!2 var2396)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var513_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var384=([java.lang.String], java.lang.Object), var3796-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), var2396-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2), <init>/-1507991564=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2, java.lang.String], void), <init>/1535172608=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy], void), cast-from-var2396-to-var812=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy)}
; {var1429=r0, var332=null_type, var3905=$i0, var139=$z0, var513=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var384=java.lang.Object, var2136="The separator may not be the empty string.", var479=$i1, var3796=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var1119=$r1, var2396=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2, var2317=$r2, var812=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy}
; {r0=var1429, null_type=var332, $i0=var3905, $z0=var139, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var513, java.lang.Object=var384, "The separator may not be the empty string."=var2136, $i1=var479, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var3796, $r1=var1119, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2=var2396, $r2=var2317, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy=var812}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: void <init>(java.lang.String)>(r0);	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy)>($r2);	return $r1
;block_num 4