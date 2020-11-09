\STATE  {\textbf{Input}: Raw 2D poses with missing joints} \\
\STATE  {\textbf{Output}: Refined 2D poses}
\STATE  {\textbf{Initialization}: set f} = 0 \\

\WHILE {pose at frame f is available}
	\STATE ${f = f + 1}$  \\
	\STATE read pose at \textit{f} 
	
	\IF{the \textit{origin} is missing \textbf{or} missing  knee and ankle joints of both legs\textgreater~1}
	\STATE skip current pose
	\ENDIF
\ENDWHILE


\FOR{5 \textit{to} 6}
		\IF{$i^{th}$ joint is missing for all frames}
			\STATE replace $i^{th}$  joint information with the vertical specular joint
		\ELSE
			\STATE replace with a position [0.0, 0.0]
		\ENDIF
\ENDFOR
\endinput