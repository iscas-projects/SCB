(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort var1691 0)
(declare-sort var3111 0)
(declare-sort var315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/1528577304 (var3111) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun hasBeenScanned/-2055690266 (var2178 String) Bool)
(declare-const null-var2178 var2178)
(declare-const null-var1691 var1691)
(declare-const null-var3111 var3111)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var315 var315)
(declare-const var2445 var2178) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var2445 null-var2178)))
(declare-const var3911 var1691) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var3911 null-var1691)))
(declare-const var3950 var3111) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath 
(assert (not (= var3950 null-var3111)))
(declare-const var882 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var882 null-Bool)))
(declare-const var3188 (Array Int String)) ; Statement: r39 := @parameter3: java.lang.String[] 
(assert (not (= var3188 null-__Array__Int__String__)))
(declare-const var570 var315) ; Statement: r2 := @parameter4: java.util.Deque 
(assert (not (= var570 null-var315)))
(assert true)
(define-const var3691 String (toString/1528577304 var3950)) ; Statement: r40 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String toString()>() 
(assert true)
(define-const var3673 Bool (isEmpty/-1285796103 var3691)) ; Statement: $z0 = virtualinvoke r40.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var3673 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if z1 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: boolean followSymlinks> 
(assert (not (= (ite var882 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
(define-const var847 Bool (hasBeenScanned/-2055690266 var2445 var3691)) ; Statement: $z15 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: boolean hasBeenScanned(java.lang.String)>(r40) 
 ; Statement: if $z15 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: boolean followSymlinks> 
(assert (not (= (ite var847 1 0) 0))) ; Negate: Cond: $z15 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/1528577304=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), hasBeenScanned/-2055690266=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, java.lang.String], boolean)}
; {var2178=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var2445=r1, var1691=java.io.File, var3911=r3, var3111=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath, var3950=r0, var882=z1, var3188=r39, var315=java.util.Deque, var570=r2, var3691=r40, var3673=$z0, var847=$z15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2178, r1=var2445, java.io.File=var1691, r3=var3911, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath=var3111, r0=var3950, z1=var882, r39=var3188, java.util.Deque=var315, r2=var570, r40=var3691, $z0=var3673, $z15=var847}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r3 := @parameter0: java.io.File;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath;	z1 := @parameter2: boolean;	r39 := @parameter3: java.lang.String[];	r2 := @parameter4: java.util.Deque;	r40 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: java.lang.String toString()>();	$z0 = virtualinvoke r40.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto (branch);	if z1 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: boolean followSymlinks>;	$z15 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: boolean hasBeenScanned(java.lang.String)>(r40);	if $z15 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: boolean followSymlinks>;	return
;block_num 4