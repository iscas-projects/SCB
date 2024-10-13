(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2525 0)
(declare-sort var738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2525_getProperty/-1659784690 (String String) String)
(declare-fun var738-init () var738)
(declare-fun var2525_getProperty/258823597 (String) String)
(declare-fun <init>/1056156189 (var738 String String) void)
(declare-fun <init>/-1833447926 (var738 var738 String) void)
(define-const var180 String (var2525_getProperty/-1659784690 "os.name" "generic")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("os.name", "generic") 
(define-const var3312 String "Mac OS X") ; Statement: $r1 = "Mac OS X" 
(assert true)
(define-const var2419 Bool (= var3312 var180)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("Windows") 
(assert (not (= (ite var2419 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var517 var738 var738-init) ; Statement: $r6 = new java.io.File 
(define-const var174 var738 var738-init) ; Statement: $r7 = new java.io.File 
(define-const var1 String (var2525_getProperty/258823597 "user.home")) ; Statement: $r8 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(assert true)
;(assert (<init>/1056156189 var174 var1 "Library")) ; Statement: specialinvoke $r7.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r8, "Library") 

(declare-const var174!1 var738)
(declare-const var1!1 String)
(declare-const var742 String)
(assert true)
;(assert (<init>/-1833447926 var517 var174!1 "Caches")) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>($r7, "Caches") 

(declare-const var517!1 var738)
(declare-const var174!2 var738)
(declare-const var2298 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2525_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), var738-init=([], java.io.File), var2525_getProperty/258823597=([java.lang.String], java.lang.String), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var2525=java.lang.System, var180=r0, var3312=$r1, var2419=$z0, var738=java.io.File, var517=$r6, var174=$r7, var1=$r8, var742="Library", var2298="Caches"}
; {java.lang.System=var2525, r0=var180, $r1=var3312, $z0=var2419, java.io.File=var738, $r6=var517, $r7=var174, $r8=var1, "Library"=var742, "Caches"=var2298}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("os.name", "generic");	$r1 = "Mac OS X";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("Windows");	$r6 = new java.io.File;	$r7 = new java.io.File;	$r8 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	specialinvoke $r7.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r8, "Library");	specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>($r7, "Caches");	return $r6
;block_num 2