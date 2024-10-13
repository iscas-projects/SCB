(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2412 0)
(declare-sort var742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun position/1872767944 (var2412) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun length/1872767944 (var2412) Int)
(declare-fun incoming/1872767944 (var2412) Int)
(declare-fun exit/1872767944 (var2412) (Array Int var2412))
(declare-fun toCatch/1872767944 (var2412) var742)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2412 var2412)
(declare-const null-String String)
(declare-const null-__Array__Int__var2412__ (Array Int var2412))
(declare-const null-var742 var742)
(declare-const var292 var2412) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock 
(assert (not (= var292 null-var2412)))
(declare-const var30 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var30 null-String)))
(assert true)
(define-const var2018 String (append/672562846 var30 "pos=")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pos=") 
(declare-const var30!1 String)
(assert (= var30!1 (str.++ var30 "pos=")))
(define-const var2772 Int (position/1872767944 var292)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: int position> 
(assert true)
(define-const var387 String (append/-1001720160 var2018 var2772)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2018!1 String)
(assert (str.prefixof var2018 var2018!1))
(assert true)
(define-const var1053 String (append/672562846 var387 ", len=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", len=") 
(declare-const var387!1 String)
(assert (= var387!1 (str.++ var387 ", len=")))
(define-const var2551 Int (length/1872767944 var292)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: int length> 
(assert true)
(define-const var2905 String (append/-1001720160 var1053 var2551)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1053!1 String)
(assert (str.prefixof var1053 var1053!1))
(assert true)
(define-const var823 String (append/672562846 var2905 ", in=")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", in=") 
(declare-const var2905!1 String)
(assert (= var2905!1 (str.++ var2905 ", in=")))
(define-const var1572 Int (incoming/1872767944 var292)) ; Statement: $i2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: int incoming> 
(assert true)
(define-const var2517 String (append/-1001720160 var823 var1572)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var823!1 String)
(assert (str.prefixof var823 var823!1))
(assert true)
;(assert (append/672562846 var2517 ", exit{")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exit{") 
(declare-const var2517!1 String)
(assert (= var2517!1 (str.++ var2517 ", exit{")))
(define-const var943 (Array Int var2412) (exit/1872767944 var292)) ; Statement: $r8 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock[] exit> 
 ; Statement: if $r8 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}, {") 
(assert (= var943 null-__Array__Int__var2412__)) ; Cond: $r8 == null 
(assert true)
;(assert (append/672562846 var30!1 "}, {")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}, {") 
(declare-const var30!2 String)
(assert (= var30!2 (str.++ var30!1 "}, {")))
(define-const var2003 var742 (toCatch/1872767944 var292)) ; Statement: r17 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock$Catch toCatch> 
(assert true) ; Non Conditional
 ; Statement: if r17 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= var2003 null-var742)) ; Cond: r17 == null 
(assert true)
;(assert (append/-1166366385 var30!2 125)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var30!3 String)
(assert (str.prefixof var30!2 var30!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), position/1872767944=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), length/1872767944=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], int), incoming/1872767944=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], int), exit/1872767944=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock[]), toCatch/1872767944=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock$Catch), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2412=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, var292=r1, var30=r0, var2018=$r2, var2772=$i0, var387=$r3, var1053=$r4, var2551=$i1, var2905=$r5, var823=$r6, var1572=$i2, var2517=$r7, var943=$r8, var742=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock$Catch, var2003=r17}
; {org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock=var2412, r1=var292, r0=var30, $r2=var2018, $i0=var2772, $r3=var387, $r4=var1053, $i1=var2551, $r5=var2905, $r6=var823, $i2=var1572, $r7=var2517, $r8=var943, org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock$Catch=var742, r17=var2003}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pos=");	$i0 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: int position>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", len=");	$i1 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: int length>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", in=");	$i2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: int incoming>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exit{");	$r8 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock[] exit>;	if $r8 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}, {");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}, {");	r17 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock$Catch toCatch>;	if r17 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 4