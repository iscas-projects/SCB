(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var370 0)
(declare-sort var1599 0)
(declare-sort var1628 0)
(declare-sort var1691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun switchToIncludeFile/1228892977 (var1599) void)
(declare-fun cast-from-var370-to-var1599 (var370) var1599)
(declare-fun arr-var1628-init () (Array Int var1628))
(declare-fun cast-from-String-to-var1628 (String) var1628)
(declare-fun genCodeLine/787715242 (var1599 (Array Int var1628)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1691_getLongType/-387263599 () String)
(declare-const null-var370 var370)
(declare-const null-__Array__Int__var1628__ (Array Int var1628))
(declare-const var370-tokMgrClassName String)
(declare-const var370-defaultLexState Int)
(declare-const var1519 var370) ; Statement: r0 := @this: org.javacc.parser.LexGenCPP 
(assert (not (= var1519 null-var370)))
(assert true)
;(assert (switchToIncludeFile/1228892977 (cast-from-var370-to-var1599 var1519))) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>() 

(declare-const var1519!1 var370)
(define-const var175 (Array Int var1628) arr-var1628-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var175!1 (Array Int var1628))
(assert (not (= var175!1 null-__Array__Int__var1628__)))
(assert (= (select var175!1 0) (cast-from-String-to-var1628 "#ifndef JAVACC_CHARSTREAM"))) ; Statement: $r1[0] = "#ifndef JAVACC_CHARSTREAM" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!1) var175!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var1519!2 var370)
(declare-const var175!2 (Array Int var1628))
(define-const var791 (Array Int var1628) arr-var1628-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(declare-const var791!1 (Array Int var1628))
(assert (not (= var791!1 null-__Array__Int__var1628__)))
(assert (= (select var791!1 0) (cast-from-String-to-var1628 "#define JAVACC_CHARSTREAM CharStream"))) ; Statement: $r2[0] = "#define JAVACC_CHARSTREAM CharStream" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!2) var791!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r2) 

(declare-const var1519!3 var370)
(declare-const var791!2 (Array Int var1628))
(define-const var965 (Array Int var1628) arr-var1628-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var965!1 (Array Int var1628))
(assert (not (= var965!1 null-__Array__Int__var1628__)))
(assert (= (select var965!1 0) (cast-from-String-to-var1628 "#endif"))) ; Statement: $r3[0] = "#endif" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!3) var965!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var1519!4 var370)
(declare-const var965!2 (Array Int var1628))
(define-const var1986 (Array Int var1628) arr-var1628-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var1986!1 (Array Int var1628))
(assert (not (= var1986!1 null-__Array__Int__var1628__)))
(assert (= (select var1986!1 0) (cast-from-String-to-var1628 ""))) ; Statement: $r4[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!4) var1986!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4) 

(declare-const var1519!5 var370)
(declare-const var1986!2 (Array Int var1628))
(define-const var1114 (Array Int var1628) arr-var1628-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var1114!1 (Array Int var1628))
(assert (not (= var1114!1 null-__Array__Int__var1628__)))
(assert (= (select var1114!1 0) (cast-from-String-to-var1628 "private:"))) ; Statement: $r5[0] = "private:" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!5) var1114!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var1519!6 var370)
(declare-const var1114!2 (Array Int var1628))
(define-const var2772 (Array Int var1628) arr-var1628-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2772!1 (Array Int var1628))
(assert (not (= var2772!1 null-__Array__Int__var1628__)))
(assert (= (select var2772!1 0) (cast-from-String-to-var1628 "  void ReInitRounds();"))) ; Statement: $r6[0] = "  void ReInitRounds();" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!6) var2772!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var1519!7 var370)
(declare-const var2772!2 (Array Int var1628))
(define-const var1812 (Array Int var1628) arr-var1628-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var1812!1 (Array Int var1628))
(assert (not (= var1812!1 null-__Array__Int__var1628__)))
(assert (= (select var1812!1 0) (cast-from-String-to-var1628 ""))) ; Statement: $r7[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!7) var1812!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var1519!8 var370)
(declare-const var1812!2 (Array Int var1628))
(define-const var1943 (Array Int var1628) arr-var1628-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1943!1 (Array Int var1628))
(assert (not (= var1943!1 null-__Array__Int__var1628__)))
(assert (= (select var1943!1 0) (cast-from-String-to-var1628 "public:"))) ; Statement: $r8[0] = "public:" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!8) var1943!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var1519!9 var370)
(declare-const var1943!2 (Array Int var1628))
(define-const var1543 (Array Int var1628) arr-var1628-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(define-const var165 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var165)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var165!1 String)
(assert (= var165!1 ""))
(assert true)
(define-const var56 String (append/672562846 var165!1 "  ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var165!2 String)
(assert (= var165!2 (str.++ var165!1 "  ")))
(define-const var1601 String var370-tokMgrClassName) ; Statement: $r11 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(assert true)
(define-const var2319 String (append/672562846 var56 var1601)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var56!1 String)
(assert (= var56!1 (str.++ var56 var1601)))
(assert true)
(define-const var3143 String (append/672562846 var2319 "(JAVACC_CHARSTREAM *stream, int lexState = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(JAVACC_CHARSTREAM *stream, int lexState = ") 
(declare-const var2319!1 String)
(assert (= var2319!1 (str.++ var2319 "(JAVACC_CHARSTREAM *stream, int lexState = ")))
(define-const var3887 Int var370-defaultLexState) ; Statement: $i0 = <org.javacc.parser.LexGenCPP: int defaultLexState> 
(assert true)
(define-const var1212 String (append/-1001720160 var3143 var3887)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3143!1 String)
(assert (str.prefixof var3143 var3143!1))
(assert true)
(define-const var3720 String (append/672562846 var1212 ");")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1212!1 String)
(assert (= var1212!1 (str.++ var1212 ");")))
(assert true)
(define-const var2657 String (toString/-2075883882 var3720)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1543!1 (Array Int var1628))
(assert (not (= var1543!1 null-__Array__Int__var1628__)))
(assert (= (select var1543!1 0) (cast-from-String-to-var1628 var2657))) ; Statement: $r9[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!9) var1543!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var1519!10 var370)
(declare-const var1543!2 (Array Int var1628))
(define-const var1532 (Array Int var1628) arr-var1628-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(define-const var386 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var386)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var386!1 String)
(assert (= var386!1 ""))
(assert true)
(define-const var2799 String (append/672562846 var386!1 "  virtual ~")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  virtual ~") 
(declare-const var386!2 String)
(assert (= var386!2 (str.++ var386!1 "  virtual ~")))
(define-const var113 String var370-tokMgrClassName) ; Statement: $r20 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(assert true)
(define-const var2837 String (append/672562846 var2799 var113)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2799!1 String)
(assert (= var2799!1 (str.++ var2799 var113)))
(assert true)
(define-const var3392 String (append/672562846 var2837 "();")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("();") 
(declare-const var2837!1 String)
(assert (= var2837!1 (str.++ var2837 "();")))
(assert true)
(define-const var2800 String (toString/-2075883882 var3392)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1532!1 (Array Int var1628))
(assert (not (= var1532!1 null-__Array__Int__var1628__)))
(assert (= (select var1532!1 0) (cast-from-String-to-var1628 var2800))) ; Statement: $r18[0] = $r24 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!10) var1532!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var1519!11 var370)
(declare-const var1532!2 (Array Int var1628))
(define-const var38 (Array Int var1628) arr-var1628-init) ; Statement: $r25 = newarray (java.lang.Object)[1] 
(define-const var2006 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2006)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2006!1 String)
(assert (= var2006!1 ""))
(assert true)
(define-const var1572 String (append/672562846 var2006!1 "  void ReInit(JAVACC_CHARSTREAM *stream, int lexState = ")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  void ReInit(JAVACC_CHARSTREAM *stream, int lexState = ") 
(declare-const var2006!2 String)
(assert (= var2006!2 (str.++ var2006!1 "  void ReInit(JAVACC_CHARSTREAM *stream, int lexState = ")))
(define-const var1689 Int var370-defaultLexState) ; Statement: $i1 = <org.javacc.parser.LexGenCPP: int defaultLexState> 
(assert true)
(define-const var2535 String (append/-1001720160 var1572 var1689)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1572!1 String)
(assert (str.prefixof var1572 var1572!1))
(assert true)
(define-const var1547 String (append/672562846 var2535 ");")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var2535!1 String)
(assert (= var2535!1 (str.++ var2535 ");")))
(assert true)
(define-const var367 String (toString/-2075883882 var1547)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var38!1 (Array Int var1628))
(assert (not (= var38!1 null-__Array__Int__var1628__)))
(assert (= (select var38!1 0) (cast-from-String-to-var1628 var367))) ; Statement: $r25[0] = $r30 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!11) var38!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r25) 

(declare-const var1519!12 var370)
(declare-const var38!2 (Array Int var1628))
(define-const var2332 (Array Int var1628) arr-var1628-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var2332!1 (Array Int var1628))
(assert (not (= var2332!1 null-__Array__Int__var1628__)))
(assert (= (select var2332!1 0) (cast-from-String-to-var1628 "  void SwitchTo(int lexState);"))) ; Statement: $r31[0] = "  void SwitchTo(int lexState);" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!12) var2332!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var1519!13 var370)
(declare-const var2332!2 (Array Int var1628))
(define-const var3263 (Array Int var1628) arr-var1628-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var3263!1 (Array Int var1628))
(assert (not (= var3263!1 null-__Array__Int__var1628__)))
(assert (= (select var3263!1 0) (cast-from-String-to-var1628 "  void clear();"))) ; Statement: $r32[0] = "  void clear();" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!13) var3263!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var1519!14 var370)
(declare-const var3263!2 (Array Int var1628))
(define-const var788 (Array Int var1628) arr-var1628-init) ; Statement: $r33 = newarray (java.lang.Object)[1] 
(define-const var1891 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1891)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1891!1 String)
(assert (= var1891!1 ""))
(assert true)
(define-const var855 String (append/672562846 var1891!1 "  const JJSimpleString jjKindsForBitVector(int i, ")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  const JJSimpleString jjKindsForBitVector(int i, ") 
(declare-const var1891!2 String)
(assert (= var1891!2 (str.++ var1891!1 "  const JJSimpleString jjKindsForBitVector(int i, ")))
(define-const var674 String var1691_getLongType/-387263599) ; Statement: $r35 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var3329 String (append/672562846 var855 var674)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var855!1 String)
(assert (= var855!1 (str.++ var855 var674)))
(assert true)
(define-const var3627 String (append/672562846 var3329 " vec);")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" vec);") 
(declare-const var3329!1 String)
(assert (= var3329!1 (str.++ var3329 " vec);")))
(assert true)
(define-const var1714 String (toString/-2075883882 var3627)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var788!1 (Array Int var1628))
(assert (not (= var788!1 null-__Array__Int__var1628__)))
(assert (= (select var788!1 0) (cast-from-String-to-var1628 var1714))) ; Statement: $r33[0] = $r39 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!14) var788!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r33) 

(declare-const var1519!15 var370)
(declare-const var788!2 (Array Int var1628))
(define-const var1688 (Array Int var1628) arr-var1628-init) ; Statement: $r40 = newarray (java.lang.Object)[1] 
(declare-const var1688!1 (Array Int var1628))
(assert (not (= var1688!1 null-__Array__Int__var1628__)))
(assert (= (select var1688!1 0) (cast-from-String-to-var1628 "  const JJSimpleString jjKindsForStateVector(int lexState, int vec[], int start, int end);"))) ; Statement: $r40[0] = "  const JJSimpleString jjKindsForStateVector(int lexState, int vec[], int start, int end);" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!15) var1688!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r40) 

(declare-const var1519!16 var370)
(declare-const var1688!2 (Array Int var1628))
(define-const var2582 (Array Int var1628) arr-var1628-init) ; Statement: $r41 = newarray (java.lang.Object)[1] 
(declare-const var2582!1 (Array Int var1628))
(assert (not (= var2582!1 null-__Array__Int__var1628__)))
(assert (= (select var2582!1 0) (cast-from-String-to-var1628 ""))) ; Statement: $r41[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var370-to-var1599 var1519!16) var2582!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r41) 

(declare-const var1519!17 var370)
(declare-const var2582!2 (Array Int var1628))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {switchToIncludeFile/1228892977=([org.javacc.parser.CodeGenerator], void), cast-from-var370-to-var1599=([org.javacc.parser.LexGenCPP], org.javacc.parser.CodeGenerator), arr-var1628-init=([], java.lang.Object[]), cast-from-String-to-var1628=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1691_getLongType/-387263599=([], java.lang.String)}
; {var370=org.javacc.parser.LexGenCPP, var1519=r0, var1599=org.javacc.parser.CodeGenerator, var1628=java.lang.Object, var175=$r1, var791=$r2, var965=$r3, var1986=$r4, var1114=$r5, var2772=$r6, var1812=$r7, var1943=$r8, var1543=$r9, var165=$r10, var56=$r12, var1601=$r11, var2319=$r13, var3143=$r14, var3887=$i0, var1212=$r15, var3720=$r16, var2657=$r17, var1532=$r18, var386=$r19, var2799=$r21, var113=$r20, var2837=$r22, var3392=$r23, var2800=$r24, var38=$r25, var2006=$r26, var1572=$r27, var1689=$i1, var2535=$r28, var1547=$r29, var367=$r30, var2332=$r31, var3263=$r32, var788=$r33, var1891=$r34, var855=$r36, var1691=org.javacc.parser.Options, var674=$r35, var3329=$r37, var3627=$r38, var1714=$r39, var1688=$r40, var2582=$r41}
; {org.javacc.parser.LexGenCPP=var370, r0=var1519, org.javacc.parser.CodeGenerator=var1599, java.lang.Object=var1628, $r1=var175, $r2=var791, $r3=var965, $r4=var1986, $r5=var1114, $r6=var2772, $r7=var1812, $r8=var1943, $r9=var1543, $r10=var165, $r12=var56, $r11=var1601, $r13=var2319, $r14=var3143, $i0=var3887, $r15=var1212, $r16=var3720, $r17=var2657, $r18=var1532, $r19=var386, $r21=var2799, $r20=var113, $r22=var2837, $r23=var3392, $r24=var2800, $r25=var38, $r26=var2006, $r27=var1572, $i1=var1689, $r28=var2535, $r29=var1547, $r30=var367, $r31=var2332, $r32=var3263, $r33=var788, $r34=var1891, $r36=var855, org.javacc.parser.Options=var1691, $r35=var674, $r37=var3329, $r38=var3627, $r39=var1714, $r40=var1688, $r41=var2582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @this: org.javacc.parser.LexGenCPP;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = "#ifndef JAVACC_CHARSTREAM";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r1);	$r2 = newarray (java.lang.Object)[1];	$r2[0] = "#define JAVACC_CHARSTREAM CharStream";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r2);	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "#endif";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3);	$r4 = newarray (java.lang.Object)[1];	$r4[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4);	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "private:";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "  void ReInitRounds();";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "public:";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(JAVACC_CHARSTREAM *stream, int lexState = ");	$i0 = <org.javacc.parser.LexGenCPP: int defaultLexState>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[0] = $r17;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r9);	$r18 = newarray (java.lang.Object)[1];	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  virtual ~");	$r20 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("();");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r18[0] = $r24;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r18);	$r25 = newarray (java.lang.Object)[1];	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  void ReInit(JAVACC_CHARSTREAM *stream, int lexState = ");	$i1 = <org.javacc.parser.LexGenCPP: int defaultLexState>;	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r25[0] = $r30;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r25);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "  void SwitchTo(int lexState);";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "  void clear();";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r32);	$r33 = newarray (java.lang.Object)[1];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  const JJSimpleString jjKindsForBitVector(int i, ");	$r35 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" vec);");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	$r33[0] = $r39;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r33);	$r40 = newarray (java.lang.Object)[1];	$r40[0] = "  const JJSimpleString jjKindsForStateVector(int lexState, int vec[], int start, int end);";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r40);	$r41 = newarray (java.lang.Object)[1];	$r41[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r41);	return
;block_num 1