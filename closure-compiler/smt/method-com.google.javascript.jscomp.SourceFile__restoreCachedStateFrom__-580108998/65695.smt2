(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var330 0)
(declare-sort var3558 0)
(declare-sort var2186 0)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFilename/1245867907 (var330) String)
(declare-fun getName/-2142232167 (var1979) String)
(declare-fun var3558_checkState/-499612547 (Bool String var2186 var2186) void)
(declare-fun cast-from-String-to-var2186 (String) var2186)
(declare-fun getSourceKind/3765683 (var330) var314)
(declare-fun getNumLinesPlusOne/809239959 (var330) Int)
(declare-fun getNumBytesPlusOne/1654169603 (var330) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numLines/1825224596 (var1979) Int)
(declare-fun numBytes/1825224596 (var1979) Int)
(declare-const null-var1979 var1979)
(declare-const null-var330 var330)
(declare-const var314-EXTERN var314)
(declare-const var780 var1979) ; Statement: r1 := @this: com.google.javascript.jscomp.SourceFile 
(assert (not (= var780 null-var1979)))
(declare-const var365 var330) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto 
(assert (not (= var365 null-var330)))
(assert true)
(define-const var1146 String (getFilename/1245867907 var365)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
(assert true)
(define-const var815 String (getName/-2142232167 var780)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1746 Bool (= var1146 var815)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(assert true)
(define-const var1721 String (getName/-2142232167 var780)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1477 String (getFilename/1245867907 var365)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>() 
;(assert (var3558_checkState/-499612547 var1746 "Cannot restore state for %s from %s" (cast-from-String-to-var2186 var1721) (cast-from-String-to-var2186 var1477))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4) 

(declare-const var1746!1 Bool)
(declare-const var1835 String)
(declare-const var1721!1 String)
(declare-const var1477!1 String)
(assert true)
(define-const var3330 var314 (getSourceKind/3765683 var365)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>() 
(define-const var2367 var314 var314-EXTERN) ; Statement: $r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN> 
 ; Statement: if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(assert (not (= var3330 var2367))) ; Cond: $r7 != $r6 
(assert true)
(define-const var3361 Int (getNumLinesPlusOne/809239959 var365)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>() 
(define-const var2736 Int (- var3361 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var1621 Int (getNumBytesPlusOne/1654169603 var365)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>() 
(define-const var1423 Int (- var1621 1)) ; Statement: $i3 = $i2 - 1 
(define-const var953 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines> 
(assert (= var2736 var953)) ; Cond: $i1 == $i7 
(define-const var710 Int (numLines/1825224596 var780)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines> 
(assert true) ; Non Conditional
(declare-const var780!1 var1979)
(assert (not (= var780!1 null-var1979)))
(assert (= (numLines/1825224596 var780!1) var710)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4 
(define-const var3120 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes> 
(assert (not (= var1423 var3120))) ; Negate: Cond: $i3 == $i9  
(define-const var2123 Int var1423) ; Statement: $i5 = $i3 
 ; Statement: goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5] 
(assert true) ; Non Conditional
(declare-const var780!2 var1979)
(assert (not (= var780!2 null-var1979)))
(assert (= (numBytes/1825224596 var780!2) var2123)) ; Statement: r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFilename/1245867907=([com.google.javascript.jscomp.serialization.SourceFileProto], java.lang.String), getName/-2142232167=([com.google.javascript.jscomp.SourceFile], java.lang.String), var3558_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-String-to-var2186=([java.lang.String], java.lang.Object), getSourceKind/3765683=([com.google.javascript.jscomp.serialization.SourceFileProto], com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind), getNumLinesPlusOne/809239959=([com.google.javascript.jscomp.serialization.SourceFileProto], int), getNumBytesPlusOne/1654169603=([com.google.javascript.jscomp.serialization.SourceFileProto], int), cast-from-Int-to-Int=([int], int), numLines/1825224596=([com.google.javascript.jscomp.SourceFile], int), numBytes/1825224596=([com.google.javascript.jscomp.SourceFile], int)}
; {var1979=com.google.javascript.jscomp.SourceFile, var780=r1, var330=com.google.javascript.jscomp.serialization.SourceFileProto, var365=r0, var1146=$r3, var815=$r2, var1746=$z0, var1721=$r5, var1477=$r4, var3558=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2186=java.lang.Object, var1835="Cannot restore state for %s from %s", var314=com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind, var3330=$r7, var2367=$r6, var3361=$i0, var2736=$i1, var1621=$i2, var1423=$i3, var953=$i7, var710=$i4, var3120=$i9, var2123=$i5}
; {com.google.javascript.jscomp.SourceFile=var1979, r1=var780, com.google.javascript.jscomp.serialization.SourceFileProto=var330, r0=var365, $r3=var1146, $r2=var815, $z0=var1746, $r5=var1721, $r4=var1477, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3558, java.lang.Object=var2186, "Cannot restore state for %s from %s"=var1835, com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind=var314, $r7=var3330, $r6=var2367, $i0=var3361, $i1=var2736, $i2=var1621, $i3=var1423, $i7=var953, $i4=var710, $i9=var3120, $i5=var2123}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SourceFile;	r0 := @parameter0: com.google.javascript.jscomp.serialization.SourceFileProto;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: java.lang.String getFilename()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z0, "Cannot restore state for %s from %s", $r5, $r4);	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind getSourceKind()>();	$r6 = <com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind: com.google.javascript.jscomp.serialization.SourceFileProto$SourceKind EXTERN>;	if $r7 != $r6 goto $i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumLinesPlusOne()>();	$i1 = $i0 - 1;	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto: int getNumBytesPlusOne()>();	$i3 = $i2 - 1;	$i7 = (int) -1;	if $i1 == $i7 goto $i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines>;	$i4 = r1.<com.google.javascript.jscomp.SourceFile: int numLines>;	r1.<com.google.javascript.jscomp.SourceFile: int numLines> = $i4;	$i9 = (int) -1;	if $i3 == $i9 goto $i5 = r1.<com.google.javascript.jscomp.SourceFile: int numBytes>;	$i5 = $i3;	goto [?= r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5];	r1.<com.google.javascript.jscomp.SourceFile: int numBytes> = $i5;	return
;block_num 6