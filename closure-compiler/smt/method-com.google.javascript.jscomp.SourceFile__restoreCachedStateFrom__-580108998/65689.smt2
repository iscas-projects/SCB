(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3858 0)
(declare-sort var2516 0)
(declare-sort var2949 0)
(declare-sort var1928 0)
(declare-sort var1437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFilename/1245867907 (var2516) String)
(declare-fun getName/-2142232167 (var3858) String)
(declare-fun var2949_checkState/-499612547 (Bool String var1928 var1928) void)
(declare-fun cast-from-String-to-var1928 (String) var1928)
(declare-fun getSourceKind/3765683 (var2516) var1437)
(declare-fun getNumLinesPlusOne/809239959 (var2516) Int)
(declare-fun getNumBytesPlusOne/1654169603 (var2516) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numLines/1825224596 (var3858) Int)
(declare-fun numBytes/1825224596 (var3858) Int)
(declare-const null-var3858 var3858)
(declare-const null-var2516 var2516)
(declare-const var1437-EXTERN var1437)
(declare-const var1421 var3858) ; Statement: r1 := @this: com.google.javascript.jscomp.SourceFile 
(assert (not (= var1421 null-var3858)))
(declare-const var1306 var2516) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto 
(assert (not (= var1306 null-var2516)))
(assert true)
(define-const var1516 String (getFilename/1245867907 var1306)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
(assert true)
(define-const var1989 String (getName/-2142232167 var1421)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1210 Bool (= var1516 var1989)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(assert true)
(define-const var1800 String (getName/-2142232167 var1421)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1333 String (getFilename/1245867907 var1306)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
;(assert (var2949_checkState/-499612547 var1210 "Cannot restore state for %s from %s" (cast-from-String-to-var1928 var1800) (cast-from-String-to-var1928 var1333))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4) 

(declare-const var1210!1 Bool)
(declare-const var1467 String)
(declare-const var1800!1 String)
(declare-const var1333!1 String)
(assert true)
(define-const var3524 var1437 (getSourceKind/3765683 var1306)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>() 
(define-const var3068 var1437 var1437-EXTERN) ; Statement: $r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN> 
 ; Statement: if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(assert (not (= var3524 var3068))) ; Cond: $r7 != $r6 
(assert true)
(define-const var146 Int (getNumLinesPlusOne/809239959 var1306)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(define-const var3707 Int (- var146 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var3794 Int (getNumBytesPlusOne/1654169603 var1306)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>() 
(define-const var2297 Int (- var3794 1)) ; Statement: $i3 = $i2 - 1 
(define-const var1924 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines> 
(assert (not (= var3707 var1924))) ; Negate: Cond: $i1 == $i7  
(define-const var2798 Int var3707) ; Statement: $i4 = $i1 
 ; Statement: goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4] 
(assert true) ; Non Conditional
(declare-const var1421!1 var3858)
(assert (not (= var1421!1 null-var3858)))
(assert (= (numLines/1825224596 var1421!1) var2798)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4 
(define-const var3985 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes> 
(assert (= var2297 var3985)) ; Cond: $i3 == $i9 
(define-const var1299 Int (numBytes/1825224596 var1421!1)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes> 
(assert true) ; Non Conditional
(declare-const var1421!2 var3858)
(assert (not (= var1421!2 null-var3858)))
(assert (= (numBytes/1825224596 var1421!2) var1299)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFilename/1245867907=([com.google.javascript.jscomp.serialization.SourceFileProto], java.lang.String), getName/-2142232167=([com.google.javascript.jscomp.SourceFile], java.lang.String), var2949_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1928=([java.lang.String], java.lang.Object), getSourceKind/3765683=([com.google.javascript.jscomp.serialization.SourceFileProto], com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind), getNumLinesPlusOne/809239959=([com.google.javascript.jscomp.serialization.SourceFileProto], int), getNumBytesPlusOne/1654169603=([com.google.javascript.jscomp.serialization.SourceFileProto], int), cast-from-Int-to-Int=([int], int), numLines/1825224596=([com.google.javascript.jscomp.SourceFile], int), numBytes/1825224596=([com.google.javascript.jscomp.SourceFile], int)}
; {var3858=com.google.javascript.jscomp.SourceFile, var1421=r1, var2516=com.google.javascript.jscomp.serialization.SourceFileProto, var1306=r0, var1516=$r3, var1989=$r2, var1210=$z0, var1800=$r5, var1333=$r4, var2949=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1928=java.lang.Object, var1467="Cannot restore state for %s from %s", var1437=com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind, var3524=$r7, var3068=$r6, var146=$i0, var3707=$i1, var3794=$i2, var2297=$i3, var1924=$i7, var2798=$i4, var3985=$i9, var1299=$i5}
; {com.google.javascript.jscomp.SourceFile=var3858, r1=var1421, com.google.javascript.jscomp.serialization.SourceFileProto=var2516, r0=var1306, $r3=var1516, $r2=var1989, $z0=var1210, $r5=var1800, $r4=var1333, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2949, java.lang.Object=var1928, "Cannot restore state for %s from %s"=var1467, com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind=var1437, $r7=var3524, $r6=var3068, $i0=var146, $i1=var3707, $i2=var3794, $i3=var2297, $i7=var1924, $i4=var2798, $i9=var3985, $i5=var1299}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SourceFile;	r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4);	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>();	$r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN>;	if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i1 = $i0 - 1;	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>();	$i3 = $i2 - 1;	$i7 = (int) -1;	if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines>;	$i4 = $i1;	goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4];	r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4;	$i9 = (int) -1;	if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes>;	$i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes>;	r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5;	return
;block_num 6