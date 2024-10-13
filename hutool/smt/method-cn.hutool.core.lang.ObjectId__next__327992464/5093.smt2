(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var727_nextBytes/1805153960 () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const var1279 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1279 null-Bool)))
(define-const var702 (Array Int Int) var727_nextBytes/1805153960) ; Statement: r0 = staticinvoke <cn.hutool.core.lang.ObjectId: byte[] nextBytes()>() 
(define-const var1183 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b1 = 24 
(assert (not (= (ite var1279 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3311 Int 26) ; Statement: $b1 = 26 
 ; Statement: goto [?= specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($b1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543593434 var1183 var3311)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($b1) 

(declare-const var1183!1 String)
(declare-const var3311!1 Int)
(define-const var1126 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var830 Int (getLength-Arr-Int-1 var702)) ; Statement: $i3 = lengthof r0 
 ; Statement: if i2 >= $i3 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1126 var830)) ; Cond: i2 >= $i3 
(assert true)
(define-const var1708 String (toString/-2075883882 var1183!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var727_nextBytes/1805153960=([], byte[]), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1279=z0, var727=cn.hutool.core.lang.ObjectId, var702=r0, var1183=$r4, var3311=$b1, var1126=i2, var830=$i3, var1708=$r2}
; {z0=var1279, cn.hutool.core.lang.ObjectId=var727, r0=var702, $r4=var1183, $b1=var3311, i2=var1126, $i3=var830, $r2=var1708}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r0 = staticinvoke <cn.hutool.core.lang.ObjectId: byte[] nextBytes()>();	$r4 = new java.lang.StringBuilder;	if z0 == 0 goto $b1 = 24;	$b1 = 26;	goto [?= specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($b1)];	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($b1);	i2 = 0;	$i3 = lengthof r0;	if i2 >= $i3 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5