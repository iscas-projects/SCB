(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2069 0)
(declare-sort var2680 0)
(declare-sort var2789 0)
(declare-sort var726 0)
(declare-sort var1656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var2680 Int) Int)
(declare-fun u16bitAt/1097213481 (var2680 Int) Int)
(declare-fun var1656-init () var1656)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var1656 String) void)
(declare-const null-var2069 var2069)
(declare-const null-Int Int)
(declare-const null-var2680 var2680)
(declare-const null-var2789 var2789)
(declare-const null-var726 var726)
(declare-const var1263 var2069) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var1263 null-var2069)))
(declare-const var3840 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3840 null-Int)))
(declare-const var1454 var2680) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var1454 null-var2680)))
(declare-const var351 var2789) ; Statement: r2 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var351 null-var2789)))
(declare-const var2446 var726) ; Statement: r7 := @parameter3: org.apache.ibatis.javassist.bytecode.analysis.Subroutine 
(assert (not (= var2446 null-var726)))
(define-const var518 Int (+ var3840 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var1158 Int (byteAt/822625918 var1454 var518)) ; Statement: i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1) 
(define-const var296 Int (+ var3840 2)) ; Statement: $i3 = i0 + 2 
(assert true)
(define-const var2516 Int (u16bitAt/1097213481 var1454 var296)) ; Statement: i4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i3) 
 ; Statement: lookupswitch(i2) {     case 21: goto $r17 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 22: goto $r16 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type LONG>;     case 23: goto $r15 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type FLOAT>;     case 24: goto $r14 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type DOUBLE>;     case 25: goto $r13 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type OBJECT>;     case 54: goto $r12 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 55: goto $r11 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type LONG>;     case 56: goto $r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type FLOAT>;     case 57: goto $r9 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type DOUBLE>;     case 58: goto $r8 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type OBJECT>;     case 132: goto $r5 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 169: goto $r3 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type RETURN_ADDRESS>;     default: goto $r18 = new org.apache.ibatis.javassist.bytecode.BadBytecode; } 
(assert (and (not (= var1158 169)) (and (not (= var1158 132)) (and (not (= var1158 58)) (and (not (= var1158 57)) (and (not (= var1158 56)) (and (not (= var1158 55)) (and (not (= var1158 54)) (and (not (= var1158 25)) (and (not (= var1158 24)) (and (not (= var1158 23)) (and (not (= var1158 22)) (and (not (= var1158 21)) true))))))))))))) ; Intersect: Negate: Cond: i2 == 169   and Intersect: Negate: Cond: i2 == 132   and Intersect: Negate: Cond: i2 == 58   and Intersect: Negate: Cond: i2 == 57   and Intersect: Negate: Cond: i2 == 56   and Intersect: Negate: Cond: i2 == 55   and Intersect: Negate: Cond: i2 == 54   and Intersect: Negate: Cond: i2 == 25   and Intersect: Negate: Cond: i2 == 24   and Intersect: Negate: Cond: i2 == 23   and Intersect: Negate: Cond: i2 == 22   and Intersect: Negate: Cond: i2 == 21   and Non Conditional            
(define-const var904 var1656 var1656-init) ; Statement: $r18 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2179 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2179)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2179!1 String)
(assert (= var2179!1 ""))
(assert true)
(define-const var2210 String (append/672562846 var2179!1 "Invalid WIDE operand [pos = ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid WIDE operand [pos = ") 
(declare-const var2179!2 String)
(assert (= var2179!2 (str.++ var2179!1 "Invalid WIDE operand [pos = ")))
(assert true)
(define-const var3630 String (append/-1001720160 var2210 var3840)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2210!1 String)
(assert (str.prefixof var2210 var2210!1))
(assert true)
(define-const var2434 String (append/672562846 var3630 "]: ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3630!1 String)
(assert (= var3630!1 (str.++ var3630 "]: ")))
(assert true)
(define-const var139 String (append/-1001720160 var2434 var1158)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2434!1 String)
(assert (str.prefixof var2434 var2434!1))
(assert true)
(define-const var211 String (toString/-2075883882 var139)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var904 var211)) ; Statement: specialinvoke $r18.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r24) 

(declare-const var904!1 var1656)
(declare-const var211!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), var1656-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var2069=org.apache.ibatis.javassist.bytecode.analysis.Executor, var1263=r1, var3840=i0, var2680=org.apache.ibatis.javassist.bytecode.CodeIterator, var1454=r0, var2789=org.apache.ibatis.javassist.bytecode.analysis.Frame, var351=r2, var726=org.apache.ibatis.javassist.bytecode.analysis.Subroutine, var2446=r7, var518=$i1, var1158=i2, var296=$i3, var2516=i4, var1656=org.apache.ibatis.javassist.bytecode.BadBytecode, var904=$r18, var2179=$r19, var2210=$r20, var3630=$r21, var2434=$r22, var139=$r23, var211=$r24}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var2069, r1=var1263, i0=var3840, org.apache.ibatis.javassist.bytecode.CodeIterator=var2680, r0=var1454, org.apache.ibatis.javassist.bytecode.analysis.Frame=var2789, r2=var351, org.apache.ibatis.javassist.bytecode.analysis.Subroutine=var726, r7=var2446, $i1=var518, i2=var1158, $i3=var296, i4=var2516, org.apache.ibatis.javassist.bytecode.BadBytecode=var1656, $r18=var904, $r19=var2179, $r20=var2210, $r21=var3630, $r22=var2434, $r23=var139, $r24=var211}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	i0 := @parameter0: int;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator;	r2 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Frame;	r7 := @parameter3: org.apache.ibatis.javassist.bytecode.analysis.Subroutine;	$i1 = i0 + 1;	i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1);	$i3 = i0 + 2;	i4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i3);	lookupswitch(i2) {     case 21: goto $r17 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 22: goto $r16 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type LONG>;     case 23: goto $r15 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type FLOAT>;     case 24: goto $r14 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type DOUBLE>;     case 25: goto $r13 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type OBJECT>;     case 54: goto $r12 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 55: goto $r11 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type LONG>;     case 56: goto $r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type FLOAT>;     case 57: goto $r9 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type DOUBLE>;     case 58: goto $r8 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type OBJECT>;     case 132: goto $r5 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 169: goto $r3 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type RETURN_ADDRESS>;     default: goto $r18 = new org.apache.ibatis.javassist.bytecode.BadBytecode; };	$r18 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid WIDE operand [pos = ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r24);	throw $r18
;block_num 2