\STATE  {\textbf{Input}: Raw 2D poses with missing landmarks} \\
\STATE  {\textbf{Output}: Refined 2D poses}
\STATE  {\textbf{Initialization}: set f} = 0 \\

\WHILE {pose at time f is available}
	\STATE ${f = f + 1}$  \\
	\STATE read pose at \textit{f} 
	
	\IF{the \textit{root} is missing \textbf{or} number of missing \textgreater~4}
	\STATE skip current pose
	\ENDIF
\ENDWHILE


\FOR{3 \textit{to} 14}
		\IF{i-th landmark is missing for all frames}
			\STATE replace i-th landmark data with the vertical specular landmark
		\ELSE
			\STATE interpolate i-th landmark missing data from available data in the time dimension
		\ENDIF
\ENDFOR
\endinput
