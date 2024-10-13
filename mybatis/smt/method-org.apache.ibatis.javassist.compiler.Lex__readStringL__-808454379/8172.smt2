(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1727 0)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun textBuffer/-806106376 (var1727) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun getc/289734565 (var1727) Int)
(declare-fun lineNumber/-806106376 (var1727) Int)
(declare-const null-var1727 var1727)
(declare-const null-var208 var208)
(declare-const var3963 var1727) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.Lex 
(assert (not (= var3963 null-var1727)))
(declare-const var3656 var208) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.compiler.Token 
(assert (not (= var3656 null-var208)))
(define-const var1988 String (textBuffer/-806106376 var3963)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer> 
(assert true)
;(assert (setLength/1276735992 var1988 0)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var1988!1 String)
(declare-const var3093 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var2464 Int (getc/289734565 var3963)) ; Statement: $i5 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>() 
(define-const var2662 Int var2464) ; Statement: i6 = $i5 
 ; Statement: if $i5 == 34 goto $i7 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>() 
(assert (not (= var2464 34))) ; Negate: Cond: $i5 == 34  
 ; Statement: if $i5 != 92 goto (branch) 
(assert (not (= var2464 92))) ; Cond: $i5 != 92 
 ; Statement: if $i5 == 10 goto $i2 = r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber> 
(assert (= var2464 10)) ; Cond: $i5 == 10 
(define-const var3176 Int (lineNumber/-806106376 var3963)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber> 
(define-const var3059 Int (+ var3176 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var3963!1 var1727)
(assert (not (= var3963!1 null-var1727)))
(assert (= (lineNumber/-806106376 var3963!1) var3059)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber> = $i3 
 ; Statement: return 500 
(check-sat)
(get-model)
(get-unsat-core)
; {textBuffer/-806106376=([org.apache.ibatis.javassist.compiler.Lex], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), getc/289734565=([org.apache.ibatis.javassist.compiler.Lex], int), lineNumber/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int)}
; {var1727=org.apache.ibatis.javassist.compiler.Lex, var3963=r0, var208=org.apache.ibatis.javassist.compiler.Token, var3656=r2, var1988=r1, var3093=0, var2464=$i5, var2662=i6, var3176=$i2, var3059=$i3}
; {org.apache.ibatis.javassist.compiler.Lex=var1727, r0=var3963, org.apache.ibatis.javassist.compiler.Token=var208, r2=var3656, r1=var1988, 0=var3093, $i5=var2464, i6=var2662, $i2=var3176, $i3=var3059}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.Lex;	r2 := @parameter0: org.apache.ibatis.javassist.compiler.Token;	r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer>;	virtualinvoke r1.<java.lang.StringBuilder: void setLength(int)>(0);	$i5 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>();	i6 = $i5;	if $i5 == 34 goto $i7 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>();	if $i5 != 92 goto (branch);	if $i5 == 10 goto $i2 = r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber>;	$i2 = r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber>;	$i3 = $i2 + 1;	r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber> = $i3;	return 500
;block_num 5