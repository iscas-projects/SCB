(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2558 0)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNextLabel/1330230462 (var2558) var1543)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var2558 var2558)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2558-OPCODES (Array Int String))
(declare-const var3266 var2558) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3266 null-var2558)))
(declare-const var3552 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3552 null-String)))
(declare-const var1798 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1798 null-Int)))
(assert true)
(define-const var1696 var1543 (getNextLabel/1330230462 var3266)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.internal.org.objectweb.asm.Label getNextLabel()>() 
(define-const var3564 Bool false) ; Statement: $z0 = r1 instanceof jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(assert (= (ite var3564 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2921 String (append/672562846 var3552 "    ")) ; Statement: $r7 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3552!1 String)
(assert (= var3552!1 (str.++ var3552 "    ")))
(define-const var1445 (Array Int String) var2558-OPCODES) ; Statement: $r8 = <jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String[] OPCODES> 
(define-const var1568 String (select var1445 var1798)) ; Statement: $r9 = $r8[i0] 
(assert true)
(define-const var2919 String (toLowerCase/415700667 var1568)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3030 String (append/672562846 var2921 var2919)) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2921!1 String)
(assert (= var2921!1 (str.++ var2921 var2919)))
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getNextLabel/1330230462=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.internal.org.objectweb.asm.Label), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var2558=jdk.nashorn.internal.ir.debug.NashornTextifier, var3266=r0, var3552=r2, var1798=i0, var1543=jdk.internal.org.objectweb.asm.Label, var1696=r1, var3564=$z0, var2921=$r7, var1445=$r8, var1568=$r9, var2919=$r10, var3030=$r11}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2558, r0=var3266, r2=var3552, i0=var1798, jdk.internal.org.objectweb.asm.Label=var1543, r1=var1696, $z0=var3564, $r7=var2921, $r8=var1445, $r9=var1568, $r10=var2919, $r11=var3030}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r2 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	r1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.internal.org.objectweb.asm.Label getNextLabel()>();	$z0 = r1 instanceof jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel;	if $z0 == 0 goto $r7 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r7 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r8 = <jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String[] OPCODES>;	$r9 = $r8[i0];	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toLowerCase()>();	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	return $r11
;block_num 2