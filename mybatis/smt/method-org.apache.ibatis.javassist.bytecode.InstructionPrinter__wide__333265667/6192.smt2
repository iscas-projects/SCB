(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var3011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var1064 Int) Int)
(declare-fun u16bitAt/1097213481 (var1064 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1064 var1064)
(declare-const null-Int Int)
(declare-const var3011-opcodes (Array Int String))
(declare-const var1496 var1064) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var1496 null-var1064)))
(declare-const var1316 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1316 null-Int)))
(define-const var1800 Int (+ var1316 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var2150 Int (byteAt/822625918 var1496 var1800)) ; Statement: i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1) 
(define-const var765 Int (+ var1316 2)) ; Statement: $i3 = i0 + 2 
(assert true)
(define-const var2307 Int (u16bitAt/1097213481 var1496 var765)) ; Statement: i4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i3) 
 ; Statement: lookupswitch(i2) {     case 21: goto $r1 = new java.lang.StringBuilder;     case 22: goto $r1 = new java.lang.StringBuilder;     case 23: goto $r1 = new java.lang.StringBuilder;     case 24: goto $r1 = new java.lang.StringBuilder;     case 25: goto $r1 = new java.lang.StringBuilder;     case 54: goto $r1 = new java.lang.StringBuilder;     case 55: goto $r1 = new java.lang.StringBuilder;     case 56: goto $r1 = new java.lang.StringBuilder;     case 57: goto $r1 = new java.lang.StringBuilder;     case 58: goto $r1 = new java.lang.StringBuilder;     case 132: goto $r1 = new java.lang.StringBuilder;     case 169: goto $r1 = new java.lang.StringBuilder;     default: goto $r8 = new java.lang.RuntimeException; } 
(assert (and (= var2150 21) true)) ; Intersect: Cond: i2 == 21  and Non Conditional 
(define-const var526 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var526)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var526!1 String)
(assert (= var526!1 ""))
(define-const var3718 (Array Int String) var3011-opcodes) ; Statement: $r2 = <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String[] opcodes> 
(define-const var2253 String (select var3718 var2150)) ; Statement: $r3 = $r2[i2] 
(assert true)
(define-const var205 String (append/672562846 var526!1 var2253)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var526!2 String)
(assert (= var526!2 (str.++ var526!1 var2253)))
(assert true)
(define-const var2390 String (append/672562846 var205 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var205!1 String)
(assert (= var205!1 (str.++ var205 " ")))
(assert true)
(define-const var589 String (append/-1001720160 var2390 var2307)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var2390!1 String)
(assert (str.prefixof var2390 var2390!1))
(assert true)
(define-const var1861 String (toString/-2075883882 var589)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1064=org.apache.ibatis.javassist.bytecode.CodeIterator, var1496=r0, var1316=i0, var1800=$i1, var2150=i2, var765=$i3, var2307=i4, var526=$r1, var3011=org.apache.ibatis.javassist.bytecode.InstructionPrinter, var3718=$r2, var2253=$r3, var205=$r4, var2390=$r5, var589=$r6, var1861=$r7}
; {org.apache.ibatis.javassist.bytecode.CodeIterator=var1064, r0=var1496, i0=var1316, $i1=var1800, i2=var2150, $i3=var765, i4=var2307, $r1=var526, org.apache.ibatis.javassist.bytecode.InstructionPrinter=var3011, $r2=var3718, $r3=var2253, $r4=var205, $r5=var2390, $r6=var589, $r7=var1861}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i0 := @parameter1: int;	$i1 = i0 + 1;	i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1);	$i3 = i0 + 2;	i4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i3);	lookupswitch(i2) {     case 21: goto $r1 = new java.lang.StringBuilder;     case 22: goto $r1 = new java.lang.StringBuilder;     case 23: goto $r1 = new java.lang.StringBuilder;     case 24: goto $r1 = new java.lang.StringBuilder;     case 25: goto $r1 = new java.lang.StringBuilder;     case 54: goto $r1 = new java.lang.StringBuilder;     case 55: goto $r1 = new java.lang.StringBuilder;     case 56: goto $r1 = new java.lang.StringBuilder;     case 57: goto $r1 = new java.lang.StringBuilder;     case 58: goto $r1 = new java.lang.StringBuilder;     case 132: goto $r1 = new java.lang.StringBuilder;     case 169: goto $r1 = new java.lang.StringBuilder;     default: goto $r8 = new java.lang.RuntimeException; };	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String[] opcodes>;	$r3 = $r2[i2];	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2