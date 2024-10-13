(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1428 0)
(declare-sort var659 0)
(declare-sort var3437 0)
(declare-sort var1548 0)
(declare-sort var2721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFilename/1245867907 (var659) String)
(declare-fun getName/-2142232167 (var1428) String)
(declare-fun var3437_checkState/-499612547 (Bool String var1548 var1548) void)
(declare-fun cast-from-String-to-var1548 (String) var1548)
(declare-fun getSourceKind/3765683 (var659) var2721)
(declare-fun getNumLinesPlusOne/809239959 (var659) Int)
(declare-fun getNumBytesPlusOne/1654169603 (var659) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numLines/1825224596 (var1428) Int)
(declare-fun numBytes/1825224596 (var1428) Int)
(declare-const null-var1428 var1428)
(declare-const null-var659 var659)
(declare-const var2721-EXTERN var2721)
(declare-const var356 var1428) ; Statement: r1 := @this: com.google.javascript.jscomp.SourceFile 
(assert (not (= var356 null-var1428)))
(declare-const var3270 var659) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto 
(assert (not (= var3270 null-var659)))
(assert true)
(define-const var882 String (getFilename/1245867907 var3270)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
(assert true)
(define-const var2966 String (getName/-2142232167 var356)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var2935 Bool (= var882 var2966)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(assert true)
(define-const var101 String (getName/-2142232167 var356)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1882 String (getFilename/1245867907 var3270)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
;(assert (var3437_checkState/-499612547 var2935 "Cannot restore state for %s from %s" (cast-from-String-to-var1548 var101) (cast-from-String-to-var1548 var1882))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4) 

(declare-const var2935!1 Bool)
(declare-const var1094 String)
(declare-const var101!1 String)
(declare-const var1882!1 String)
(assert true)
(define-const var3991 var2721 (getSourceKind/3765683 var3270)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>() 
(define-const var2946 var2721 var2721-EXTERN) ; Statement: $r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN> 
 ; Statement: if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(assert (not (= var3991 var2946))) ; Cond: $r7 != $r6 
(assert true)
(define-const var144 Int (getNumLinesPlusOne/809239959 var3270)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(define-const var2110 Int (- var144 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var3650 Int (getNumBytesPlusOne/1654169603 var3270)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>() 
(define-const var3023 Int (- var3650 1)) ; Statement: $i3 = $i2 - 1 
(define-const var293 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines> 
(assert (not (= var2110 var293))) ; Negate: Cond: $i1 == $i7  
(define-const var2488 Int var2110) ; Statement: $i4 = $i1 
 ; Statement: goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4] 
(assert true) ; Non Conditional
(declare-const var356!1 var1428)
(assert (not (= var356!1 null-var1428)))
(assert (= (numLines/1825224596 var356!1) var2488)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4 
(define-const var1089 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes> 
(assert (not (= var3023 var1089))) ; Negate: Cond: $i3 == $i9  
(define-const var2060 Int var3023) ; Statement: $i5 = $i3 
 ; Statement: goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5] 
(assert true) ; Non Conditional
(declare-const var356!2 var1428)
(assert (not (= var356!2 null-var1428)))
(assert (= (numBytes/1825224596 var356!2) var2060)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFilename/1245867907=([com.google.javascript.jscomp.serialization.SourceFileProto], java.lang.String), getName/-2142232167=([com.google.javascript.jscomp.SourceFile], java.lang.String), var3437_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1548=([java.lang.String], java.lang.Object), getSourceKind/3765683=([com.google.javascript.jscomp.serialization.SourceFileProto], com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind), getNumLinesPlusOne/809239959=([com.google.javascript.jscomp.serialization.SourceFileProto], int), getNumBytesPlusOne/1654169603=([com.google.javascript.jscomp.serialization.SourceFileProto], int), cast-from-Int-to-Int=([int], int), numLines/1825224596=([com.google.javascript.jscomp.SourceFile], int), numBytes/1825224596=([com.google.javascript.jscomp.SourceFile], int)}
; {var1428=com.google.javascript.jscomp.SourceFile, var356=r1, var659=com.google.javascript.jscomp.serialization.SourceFileProto, var3270=r0, var882=$r3, var2966=$r2, var2935=$z0, var101=$r5, var1882=$r4, var3437=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1548=java.lang.Object, var1094="Cannot restore state for %s from %s", var2721=com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind, var3991=$r7, var2946=$r6, var144=$i0, var2110=$i1, var3650=$i2, var3023=$i3, var293=$i7, var2488=$i4, var1089=$i9, var2060=$i5}
; {com.google.javascript.jscomp.SourceFile=var1428, r1=var356, com.google.javascript.jscomp.serialization.SourceFileProto=var659, r0=var3270, $r3=var882, $r2=var2966, $z0=var2935, $r5=var101, $r4=var1882, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3437, java.lang.Object=var1548, "Cannot restore state for %s from %s"=var1094, com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind=var2721, $r7=var3991, $r6=var2946, $i0=var144, $i1=var2110, $i2=var3650, $i3=var3023, $i7=var293, $i4=var2488, $i9=var1089, $i5=var2060}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SourceFile;	r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4);	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>();	$r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN>;	if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i1 = $i0 - 1;	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>();	$i3 = $i2 - 1;	$i7 = (int) -1;	if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines>;	$i4 = $i1;	goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4];	r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4;	$i9 = (int) -1;	if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes>;	$i5 = $i3;	goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5];	r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5;	return
;block_num 6