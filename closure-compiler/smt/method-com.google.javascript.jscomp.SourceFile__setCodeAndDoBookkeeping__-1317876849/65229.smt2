(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1825224596 (var2845) String)
(declare-fun lineOffsets/1825224596 (var2845) (Array Int Int))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun numBytes/1825224596 (var2845) Int)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numLines/1825224596 (var2845) Int)
(declare-const null-var2845 var2845)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var424 var2845) ; Statement: r0 := @this: com.google.javascript.jscomp.SourceFile 
(assert (not (= var424 null-var2845)))
(declare-const var773 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var773 null-String)))
(declare-const var424!1 var2845)
(assert (not (= var424!1 null-var2845)))
(assert (= (code/1825224596 var424!1) null-String)) ; Statement: r0.<com.google.javascript.jscomp.SourceFile: java.lang.String code> = null 
(declare-const var424!2 var2845)
(assert (not (= var424!2 null-var2845)))
(assert (= (lineOffsets/1825224596 var424!2) null-__Array__Int__Int__)) ; Statement: r0.<com.google.javascript.jscomp.SourceFile: int[] lineOffsets> = null 
 ; Statement: if r2 == null goto return 
(assert (not (= var773 null-String))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var443 Bool (startsWith/-1785782452 var773 "\ufeff")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("\ufeff") 
 ; Statement: if $z0 == 0 goto r0.<com.google.javascript.jscomp.SourceFile: java.lang.String code> = r2 
(assert (= (ite var443 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var424!3 var2845)
(assert (not (= var424!3 null-var2845)))
(assert (= (code/1825224596 var424!3) var773)) ; Statement: r0.<com.google.javascript.jscomp.SourceFile: java.lang.String code> = r2 
(assert true)
(define-const var1430 Int (length/-134980193 var773)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(declare-const var424!4 var2845)
(assert (not (= var424!4 null-var2845)))
(assert (= (numBytes/1825224596 var424!4) var1430)) ; Statement: r0.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i0 
(define-const var3079 Int 1) ; Statement: i2 = 1 
(define-const var2474 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3828 Int (indexOf/1426977840 var773 10 var2474)) ; Statement: $i4 = virtualinvoke r2.<java.lang.String: int indexOf(int,int)>(10, i3) 
(define-const var1045 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i4 == $i6 goto r0.<com.google.javascript.jscomp.SourceFile: int numLines> = i2 
(assert (= var3828 var1045)) ; Cond: $i4 == $i6 
(declare-const var424!5 var2845)
(assert (not (= var424!5 null-var2845)))
(assert (= (numLines/1825224596 var424!5) var3079)) ; Statement: r0.<com.google.javascript.jscomp.SourceFile: int numLines> = i2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1825224596=([com.google.javascript.jscomp.SourceFile], java.lang.String), lineOffsets/1825224596=([com.google.javascript.jscomp.SourceFile], int[]), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), numBytes/1825224596=([com.google.javascript.jscomp.SourceFile], int), indexOf/1426977840=([java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), numLines/1825224596=([com.google.javascript.jscomp.SourceFile], int)}
; {var2845=com.google.javascript.jscomp.SourceFile, var424=r0, var773=r2, var2952=null_type, var443=$z0, var1430=$i0, var3079=i2, var2474=i3, var3828=$i4, var1045=$i6}
; {com.google.javascript.jscomp.SourceFile=var2845, r0=var424, r2=var773, null_type=var2952, $z0=var443, $i0=var1430, i2=var3079, i3=var2474, $i4=var3828, $i6=var1045}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.SourceFile;	r2 := @parameter0: java.lang.String;	r0.<com.google.javascript.jscomp.SourceFile: java.lang.String code> = null;	r0.<com.google.javascript.jscomp.SourceFile: int[] lineOffsets> = null;	if r2 == null goto return;	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("\ufeff");	if $z0 == 0 goto r0.<com.google.javascript.jscomp.SourceFile: java.lang.String code> = r2;	r0.<com.google.javascript.jscomp.SourceFile: java.lang.String code> = r2;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i0;	i2 = 1;	i3 = 0;	$i4 = virtualinvoke r2.<java.lang.String: int indexOf(int,int)>(10, i3);	$i6 = (int) -1;	if $i4 == $i6 goto r0.<com.google.javascript.jscomp.SourceFile: int numLines> = i2;	r0.<com.google.javascript.jscomp.SourceFile: int numLines> = i2;	return
;block_num 6