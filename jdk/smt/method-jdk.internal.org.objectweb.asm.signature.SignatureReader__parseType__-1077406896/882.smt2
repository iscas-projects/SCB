(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3942 0)
(declare-sort var1801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun visitTypeVariable/-1690122803 (var1801 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1801 var1801)
(declare-const var3873 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3873 null-String)))
(declare-const var1078 Int) ; Statement: i9 := @parameter1: int 
(assert (not (= var1078 null-Int)))
(declare-const var2 var1801) ; Statement: r1 := @parameter2: jdk.internal.org.objectweb.asm.signature.SignatureVisitor 
(assert (not (= var2 null-var1801)))
(define-const var1256 Int (+ var1078 1)) ; Statement: i10 = i9 + 1 
(assert (and true (and (> (str.len var3873) var1078) (<= 0 var1078))))
(define-const var2878 Int (charAt/698050440 var3873 var1078)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i9) 
(define-const var3594 Int (cast-from-Int-to-Int var2878)) ; Statement: $i13 = (int) $c0 
 ; Statement: tableswitch($i13) {     case 66: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 67: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 68: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 69: goto i11 = i10;     case 70: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 71: goto i11 = i10;     case 72: goto i11 = i10;     case 73: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 74: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 75: goto i11 = i10;     case 76: goto i11 = i10;     case 77: goto i11 = i10;     case 78: goto i11 = i10;     case 79: goto i11 = i10;     case 80: goto i11 = i10;     case 81: goto i11 = i10;     case 82: goto i11 = i10;     case 83: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 84: goto i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10);     case 85: goto i11 = i10;     case 86: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 87: goto i11 = i10;     case 88: goto i11 = i10;     case 89: goto i11 = i10;     case 90: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 91: goto $r2 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitArrayType()>();     default: goto i11 = i10; } 
(assert (and (= var3594 84) (and (not (= var3594 83)) (and (not (= var3594 82)) (and (not (= var3594 81)) (and (not (= var3594 80)) (and (not (= var3594 79)) (and (not (= var3594 78)) (and (not (= var3594 77)) (and (not (= var3594 76)) (and (not (= var3594 75)) (and (not (= var3594 74)) (and (not (= var3594 73)) (and (not (= var3594 72)) (and (not (= var3594 71)) (and (not (= var3594 70)) (and (not (= var3594 69)) (and (not (= var3594 68)) (and (not (= var3594 67)) (and (not (= var3594 66)) true)))))))))))))))))))) ; Intersect: Cond: $i13 == 84  and Intersect: Negate: Cond: $i13 == 83   and Intersect: Negate: Cond: $i13 == 82   and Intersect: Negate: Cond: $i13 == 81   and Intersect: Negate: Cond: $i13 == 80   and Intersect: Negate: Cond: $i13 == 79   and Intersect: Negate: Cond: $i13 == 78   and Intersect: Negate: Cond: $i13 == 77   and Intersect: Negate: Cond: $i13 == 76   and Intersect: Negate: Cond: $i13 == 75   and Intersect: Negate: Cond: $i13 == 74   and Intersect: Negate: Cond: $i13 == 73   and Intersect: Negate: Cond: $i13 == 72   and Intersect: Negate: Cond: $i13 == 71   and Intersect: Negate: Cond: $i13 == 70   and Intersect: Negate: Cond: $i13 == 69   and Intersect: Negate: Cond: $i13 == 68   and Intersect: Negate: Cond: $i13 == 67   and Intersect: Negate: Cond: $i13 == 66   and Non Conditional                   
(assert true)
(define-const var2455 Int (indexOf/1426977840 var3873 59 var1256)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10) 
(assert (and true (and (>= var1256 0) (>= (str.len var3873) var2455) (>= var2455 var1256))))
(define-const var1188 String (substring/-1240304868 var3873 var1256 var2455)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i10, i2) 
(assert true)
;(assert (visitTypeVariable/-1690122803 var2 var1188)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitTypeVariable(java.lang.String)>($r3) 

(declare-const var2!1 var1801)
(declare-const var1188!1 String)
(define-const var3450 Int (+ var2455 1)) ; Statement: $i3 = i2 + 1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), visitTypeVariable/-1690122803=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, java.lang.String], void)}
; {var3873=r0, var3942=null_type, var1078=i9, var1801=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var2=r1, var1256=i10, var2878=$c0, var3594=$i13, var2455=i2, var1188=$r3, var3450=$i3}
; {r0=var3873, null_type=var3942, i9=var1078, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var1801, r1=var2, i10=var1256, $c0=var2878, $i13=var3594, i2=var2455, $r3=var1188, $i3=var3450}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i9 := @parameter1: int;	r1 := @parameter2: jdk.internal.org.objectweb.asm.signature.SignatureVisitor;	i10 = i9 + 1;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i9);	$i13 = (int) $c0;	tableswitch($i13) {     case 66: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 67: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 68: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 69: goto i11 = i10;     case 70: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 71: goto i11 = i10;     case 72: goto i11 = i10;     case 73: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 74: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 75: goto i11 = i10;     case 76: goto i11 = i10;     case 77: goto i11 = i10;     case 78: goto i11 = i10;     case 79: goto i11 = i10;     case 80: goto i11 = i10;     case 81: goto i11 = i10;     case 82: goto i11 = i10;     case 83: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 84: goto i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10);     case 85: goto i11 = i10;     case 86: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 87: goto i11 = i10;     case 88: goto i11 = i10;     case 89: goto i11 = i10;     case 90: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 91: goto $r2 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitArrayType()>();     default: goto i11 = i10; };	i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i10, i2);	virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitTypeVariable(java.lang.String)>($r3);	$i3 = i2 + 1;	return $i3
;block_num 2