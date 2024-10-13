(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var340 0)
(declare-sort var2510 0)
(declare-sort var3403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3403-init () var3403)
(declare-fun <init>/-1407605031 (var3403 Int Int) void)
(declare-fun prefixPosition/-1058964508 (var340) var3403)
(declare-const null-var340 var340)
(declare-const null-String String)
(declare-const var2657 var340) ; Statement: r1 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3 
(assert (not (= var2657 null-var340)))
(declare-const var2298 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2298 null-String)))
(define-const var3325 Int 0) ; Statement: i2 = 0 
(define-const var1759 Int 0) ; Statement: i3 = 0 
(define-const var2071 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1695 Int (length/-134980193 var2298)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto $r3 = new com.google.debugging.sourcemap.FilePosition 
(assert (>= var2071 var1695)) ; Cond: i4 >= $i0 
(define-const var1949 var3403 var3403-init) ; Statement: $r3 = new com.google.debugging.sourcemap.FilePosition 
(assert true)
;(assert (<init>/-1407605031 var1949 var3325 var1759)) ; Statement: specialinvoke $r3.<com.google.debugging.sourcemap.FilePosition: void <init>(int,int)>(i2, i3) 

(declare-const var1949!1 var3403)
(declare-const var3325!1 Int)
(declare-const var1759!1 Int)
(declare-const var2657!1 var340)
(assert (not (= var2657!1 null-var340)))
(assert (= (prefixPosition/-1058964508 var2657!1) var1949!1)) ; Statement: r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: com.google.debugging.sourcemap.FilePosition prefixPosition> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3403-init=([], com.google.debugging.sourcemap.FilePosition), <init>/-1407605031=([com.google.debugging.sourcemap.FilePosition, int, int], void), prefixPosition/-1058964508=([com.google.debugging.sourcemap.SourceMapGeneratorV3], com.google.debugging.sourcemap.FilePosition)}
; {var340=com.google.debugging.sourcemap.SourceMapGeneratorV3, var2657=r1, var2298=r0, var2510=null_type, var3325=i2, var1759=i3, var2071=i4, var1695=$i0, var3403=com.google.debugging.sourcemap.FilePosition, var1949=$r3}
; {com.google.debugging.sourcemap.SourceMapGeneratorV3=var340, r1=var2657, r0=var2298, null_type=var2510, i2=var3325, i3=var1759, i4=var2071, $i0=var1695, com.google.debugging.sourcemap.FilePosition=var3403, $r3=var1949}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3;	r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto $r3 = new com.google.debugging.sourcemap.FilePosition;	$r3 = new com.google.debugging.sourcemap.FilePosition;	specialinvoke $r3.<com.google.debugging.sourcemap.FilePosition: void <init>(int,int)>(i2, i3);	r1.<com.google.debugging.sourcemap.SourceMapGeneratorV3: com.google.debugging.sourcemap.FilePosition prefixPosition> = $r3;	return
;block_num 3