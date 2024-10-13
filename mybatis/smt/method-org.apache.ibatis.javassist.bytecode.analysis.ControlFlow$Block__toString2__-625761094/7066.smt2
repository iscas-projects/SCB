(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1667 0)
(declare-sort var1227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString2/978461031 (var1227 String) void)
(declare-fun cast-from-var1667-to-var1227 (var1667) var1227)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entrances/-514233645 (var1667) (Array Int var1667))
(declare-fun getLength-Arr-var1667-1 ((Array Int var1667)) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1667 var1667)
(declare-const null-String String)
(declare-const var3541 var1667) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block 
(assert (not (= var3541 null-var1667)))
(declare-const var967 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var967 null-String)))
(assert true)
;(assert (toString2/978461031 (cast-from-var1667-to-var1227 var3541) var967)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>(r1) 

(declare-const var3541!1 var1667)
(declare-const var967!1 String)
(assert true)
;(assert (append/672562846 var967!1 ", incoming{")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", incoming{") 
(declare-const var967!2 String)
(assert (= var967!2 (str.++ var967!1 ", incoming{")))
(define-const var745 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3997 (Array Int var1667) (entrances/-514233645 var3541!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block[] entrances> 
(define-const var2715 Int (getLength-Arr-var1667-1 var3997)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i2 >= $i0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var745 var2715)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/-1166366385 var967!2 125)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var967!3 String)
(assert (str.prefixof var967!2 var967!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString2/978461031=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, java.lang.StringBuilder], void), cast-from-var1667-to-var1227=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block], org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entrances/-514233645=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block], org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block[]), getLength-Arr-var1667-1=([org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1667=org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block, var3541=r0, var967=r1, var1227=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, var745=i2, var3997=$r2, var2715=$i0}
; {org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block=var1667, r0=var3541, r1=var967, org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock=var1227, i2=var745, $r2=var3997, $i0=var2715}
;seq <org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block;	r1 := @parameter0: java.lang.StringBuilder;	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>(r1);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", incoming{");	i2 = 0;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block: org.apache.ibatis.javassist.bytecode.analysis.ControlFlow$Block[] entrances>;	$i0 = lengthof $r2;	if i2 >= $i0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 3