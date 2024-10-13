(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort var2208 0)
(declare-sort var2890 0)
(declare-sort var2909 0)
(declare-sort var117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFilename/1245867907 (var2208) String)
(declare-fun getName/-2142232167 (var3881) String)
(declare-fun var2890_checkState/-499612547 (Bool String var2909 var2909) void)
(declare-fun cast-from-String-to-var2909 (String) var2909)
(declare-fun getSourceKind/3765683 (var2208) var117)
(declare-fun getNumLinesPlusOne/809239959 (var2208) Int)
(declare-fun getNumBytesPlusOne/1654169603 (var2208) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numLines/1825224596 (var3881) Int)
(declare-fun numBytes/1825224596 (var3881) Int)
(declare-const null-var3881 var3881)
(declare-const null-var2208 var2208)
(declare-const var117-EXTERN var117)
(declare-const var1874 var3881) ; Statement: r1 := @this: com.google.javascript.jscomp.SourceFile 
(assert (not (= var1874 null-var3881)))
(declare-const var418 var2208) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto 
(assert (not (= var418 null-var2208)))
(assert true)
(define-const var183 String (getFilename/1245867907 var418)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
(assert true)
(define-const var3608 String (getName/-2142232167 var1874)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1735 Bool (= var183 var3608)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(assert true)
(define-const var1376 String (getName/-2142232167 var1874)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var2039 String (getFilename/1245867907 var418)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
;(assert (var2890_checkState/-499612547 var1735 "Cannot restore state for %s from %s" (cast-from-String-to-var2909 var1376) (cast-from-String-to-var2909 var2039))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4) 

(declare-const var1735!1 Bool)
(declare-const var2980 String)
(declare-const var1376!1 String)
(declare-const var2039!1 String)
(assert true)
(define-const var1416 var117 (getSourceKind/3765683 var418)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>() 
(define-const var1257 var117 var117-EXTERN) ; Statement: $r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN> 
 ; Statement: if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(assert (not (= var1416 var1257))) ; Cond: $r7 != $r6 
(assert true)
(define-const var801 Int (getNumLinesPlusOne/809239959 var418)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(define-const var3831 Int (- var801 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var539 Int (getNumBytesPlusOne/1654169603 var418)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>() 
(define-const var2848 Int (- var539 1)) ; Statement: $i3 = $i2 - 1 
(define-const var2195 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines> 
(assert (= var3831 var2195)) ; Cond: $i1 == $i7 
(define-const var2763 Int (numLines/1825224596 var1874)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines> 
(assert true) ; Non Conditional
(declare-const var1874!1 var3881)
(assert (not (= var1874!1 null-var3881)))
(assert (= (numLines/1825224596 var1874!1) var2763)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4 
(define-const var1848 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes> 
(assert (= var2848 var1848)) ; Cond: $i3 == $i9 
(define-const var1388 Int (numBytes/1825224596 var1874!1)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes> 
(assert true) ; Non Conditional
(declare-const var1874!2 var3881)
(assert (not (= var1874!2 null-var3881)))
(assert (= (numBytes/1825224596 var1874!2) var1388)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFilename/1245867907=([com.google.javascript.jscomp.serialization.SourceFileProto], java.lang.String), getName/-2142232167=([com.google.javascript.jscomp.SourceFile], java.lang.String), var2890_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var2909=([java.lang.String], java.lang.Object), getSourceKind/3765683=([com.google.javascript.jscomp.serialization.SourceFileProto], com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind), getNumLinesPlusOne/809239959=([com.google.javascript.jscomp.serialization.SourceFileProto], int), getNumBytesPlusOne/1654169603=([com.google.javascript.jscomp.serialization.SourceFileProto], int), cast-from-Int-to-Int=([int], int), numLines/1825224596=([com.google.javascript.jscomp.SourceFile], int), numBytes/1825224596=([com.google.javascript.jscomp.SourceFile], int)}
; {var3881=com.google.javascript.jscomp.SourceFile, var1874=r1, var2208=com.google.javascript.jscomp.serialization.SourceFileProto, var418=r0, var183=$r3, var3608=$r2, var1735=$z0, var1376=$r5, var2039=$r4, var2890=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2909=java.lang.Object, var2980="Cannot restore state for %s from %s", var117=com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind, var1416=$r7, var1257=$r6, var801=$i0, var3831=$i1, var539=$i2, var2848=$i3, var2195=$i7, var2763=$i4, var1848=$i9, var1388=$i5}
; {com.google.javascript.jscomp.SourceFile=var3881, r1=var1874, com.google.javascript.jscomp.serialization.SourceFileProto=var2208, r0=var418, $r3=var183, $r2=var3608, $z0=var1735, $r5=var1376, $r4=var2039, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2890, java.lang.Object=var2909, "Cannot restore state for %s from %s"=var2980, com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind=var117, $r7=var1416, $r6=var1257, $i0=var801, $i1=var3831, $i2=var539, $i3=var2848, $i7=var2195, $i4=var2763, $i9=var1848, $i5=var1388}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SourceFile;	r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4);	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>();	$r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN>;	if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i1 = $i0 - 1;	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>();	$i3 = $i2 - 1;	$i7 = (int) -1;	if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines>;	$i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines>;	r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4;	$i9 = (int) -1;	if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes>;	$i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes>;	r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5;	return
;block_num 6