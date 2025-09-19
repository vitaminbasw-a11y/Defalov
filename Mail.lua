<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delta Practice Hub</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #0c0c0c, #1a1a2e);
            color: #00ffea;
            min-height: 100vh;
            padding: 20px;
        }
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            border: 1px solid #00aaff;
            border-radius: 10px;
            padding: 20px;
            background: rgba(10, 10, 30, 0.8);
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.3);
        }
        
        header {
            text-align: center;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px solid #00aaff;
        }
        
        h1 {
            font-size: 2.5rem;
            text-shadow: 0 0 10px #00ffea;
            margin-bottom: 10px;
        }
        
        h2 {
            color: #00ff99;
            margin: 20px 0 10px;
        }
        
        .characters {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 30px;
            justify-content: center;
        }
        
        .character {
            background: rgba(0, 50, 100, 0.5);
            border: 1px solid #0088ff;
            border-radius: 8px;
            padding: 15px;
            width: 150px;
            text-align: center;
            transition: all 0.3s;
        }
        
        .character:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 200, 255, 0.4);
        }
        
        .character h3 {
            color: #00ffcc;
            margin-bottom: 10px;
        }
        
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .feature {
            background: rgba(20, 20, 40, 0.7);
            border: 1px solid #00ccff;
            border-radius: 8px;
            padding: 15px;
        }
        
        .feature h3 {
            color: #00ff99;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        
        .feature p {
            color: #aaffff;
            font-size: 0.9rem;
            margin-bottom: 15px;
        }
        
        .toggle-switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 30px;
        }
        
        .toggle-switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }
        
        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #334;
            transition: .4s;
            border-radius: 30px;
        }
        
        .slider:before {
            position: absolute;
            content: "";
            height: 22px;
            width: 22px;
            left: 4px;
            bottom: 4px;
            background-color: #aaa;
            transition: .4s;
            border-radius: 50%;
        }
        
        input:checked + .slider {
            background-color: #00ccff;
        }
        
        input:checked + .slider:before {
            transform: translateX(30px);
            background-color: #fff;
        }
        
        .controls {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-top: 20px;
        }
        
        .key {
            background: rgba(0, 50, 80, 0.6);
            border: 1px solid #00aaff;
            border-radius: 5px;
            padding: 8px 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .key kbd {
            background: #002244;
            padding: 3px 8px;
            border-radius: 4px;
            border: 1px solid #0088ff;
            font-weight: bold;
        }
        
        .esp-practice {
            margin-top: 30px;
            padding: 20px;
            background: rgba(10, 30, 50, 0.6);
            border: 1px solid #00ccff;
            border-radius: 8px;
        }
        
        .esp-box {
            height: 300px;
            position: relative;
            background: #001122;
            border: 2px solid #0088ff;
            border-radius: 8px;
            overflow: hidden;
            margin-top: 15px;
        }
        
        .target {
            position: absolute;
            width: 30px;
            height: 30px;
            background: #ff0055;
            border-radius: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 0 15px #ff0055;
        }
        
        .esp-info {
            position: absolute;
            background: rgba(0, 40, 80, 0.8);
            border: 1px solid #00ccff;
            border-radius: 5px;
            padding: 5px 10px;
            color: #00ffcc;
            font-size: 12px;
            pointer-events: none;
        }
        
        .buttons {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }
        
        button {
            background: linear-gradient(to right, #0088ff, #00ccff);
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            color: #001122;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        button:hover {
            background: linear-gradient(to right, #00ccff, #00ffcc);
            box-shadow: 0 0 15px rgba(0, 200, 255, 0.6);
        }
        
        footer {
            text-align: center;
            margin-top: 30px;
            padding-top: 15px;
            border-top: 1px solid #00aaff;
            color: #00aaee;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Delta Practice Hub</h1>
            <p>Тренировочный центр для отработки ESP и других функций</p>
        </header>
        
        <section>
            <h2>Персонажи</h2>
            <div class="characters">
                <div class="character">
                    <h3>dihh</h3>
                    <p>Misc · Local · Esp · Dummy · Tech</p>
                </div>
                <div class="character">
                    <h3>Orbit</h3>
                    <p>Fake Dash · No Slide · Keyboard</p>
                </div>
            </div>
        </section>
        
        <section>
            <h2>Функции</h2>
            <div class="features">
                <div class="feature">
                    <h3>ESP <span class="toggle-switch"><input type="checkbox" id="esp-toggle"><span class="slider"></span></span></h3>
                    <p>Визуализация объектов через стены и другие препятствия</p>
                    <div class="controls">
                        <div class="key"><kbd>Tab</kbd> Пульмета</div>
                        <div class="key"><kbd>Mouse</kbd> Звонка взрывом</div>
                    </div>
                </div>
                
                <div class="feature">
                    <h3>No Slide Dash <span class="toggle-switch"><input type="checkbox" id="dash-toggle"><span class="slider"></span></span></h3>
                    <p>Убирает задержку в конце рывка</p>
                    <div class="controls">
                        <div class="key"><kbd>Q</kbd> Fake Dash</div>
                    </div>
                </div>
                
                <div class="feature">
                    <h3>Lightning <span class="toggle-switch"><input type="checkbox" id="lightning-toggle"><span class="slider"></span></span></h3>
                    <p>Контроль молнии и электрических разрядов</p>
                    <div class="controls">
                        <div class="key"><kbd>Hold</kbd> Молний</div>
                    </div>
                </div>
                
                <div class="feature">
                    <h3>Resputant <span class="toggle-switch"><input type="checkbox" id="resp-toggle"><span class="slider"></span></span></h3>
                    <p>Управление рывком и отскоком</p>
                    <div class="controls">
                        <div class="key"><kbd>Space</kbd> Респутанть</div>
                        <div class="key"><kbd>Shift</kbd> Рывок</div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="esp-practice">
            <h2>Практика ESP</h2>
            <p>Перемещайте цель и тренируйтесь с ESP. Включите ESP для отображения информации.</p>
            <div class="buttons">
                <button id="add-target">Добавить цель</button>
                <button id="reset-targets">Сбросить цели</button>
            </div>
            <div class="esp-box" id="esp-box">
                <!-- Targets will be added here -->
            </div>
        </section>
        
        <footer>
            <p>Delta Practice Hub | Тренировочный симулятор для отработки игровых механик</p>
        </footer>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const espBox = document.getElementById('esp-box');
            const espToggle = document.getElementById('esp-toggle');
            const addTargetBtn = document.getElementById('add-target');
            const resetTargetsBtn = document.getElementById('reset-targets');
            let targetCount = 0;
            
            // Add initial target
            addTarget();
            
            // Add target on button click
            addTargetBtn.addEventListener('click', addTarget);
            
            // Reset targets
            resetTargetsBtn.addEventListener('click', function() {
                espBox.innerHTML = '';
                targetCount = 0;
                addTarget();
            });
            
            // Toggle ESP
            espToggle.addEventListener('change', function() {
                const espInfos = document.querySelectorAll('.esp-info');
                espInfos.forEach(info => {
                    info.style.display = this.checked ? 'block' : 'none';
                });
            });
            
            // Function to add a new target
            function addTarget() {
                if (targetCount >= 8) return;
                
                const target = document.createElement('div');
                target.classList.add('target');
                
                const espInfo = document.createElement('div');
                espInfo.classList.add('esp-info');
                espInfo.style.display = 'none';
                
                // Random position
                const x = Math.random() * 80 + 10;
                const y = Math.random() * 80 + 10;
                
                target.style.left = `${x}%`;
                target.style.top = `${y}%`;
                
                espInfo.innerHTML = `
                    <div>Цель ${targetCount + 1}</div>
                    <div>Дистанция: ${Math.round(Math.random() * 100)}m</div>
                    <div>Здоровье: ${Math.round(Math.random() * 100)}%</div>
                `;
                
                // Position info near target
                espInfo.style.left = `${x + 5}%`;
                espInfo.style.top = `${y - 10}%`;
                
                // Make target draggable
                target.draggable = true;
                
                target.addEventListener('dragstart', function(e) {
                    e.dataTransfer.setData('text/plain', null);
                    this.style.opacity = '0.5';
                });
                
                target.addEventListener('dragend', function(e) {
                    this.style.opacity = '1';
                    
                    // Update position based on mouse position
                    const rect = espBox.getBoundingClientRect();
                    const x = ((e.clientX - rect.left) / rect.width) * 100;
                    const y = ((e.clientY - rect.top) / rect.height) * 100;
                    
                    if (x >= 0 && x <= 100 && y >= 0 && y <= 100) {
                        this.style.left = `${x}%`;
                        this.style.top = `${y}%`;
                        
                        // Update ESP info position
                        const espInfo = this.nextSibling;
                        espInfo.style.left = `${x + 5}%`;
                        espInfo.style.top = `${y - 10}%`;
                    }
                });
                
                espBox.appendChild(target);
                espBox.appendChild(espInfo);
                
                targetCount++;
            }
            
            // Initialize tooltips and other UI elements
            const switches = document.querySelectorAll('.toggle-switch input');
            switches.forEach(sw => {
                sw.addEventListener('change', function() {
                    if (this.checked) {
                        this.parentNode.style.boxShadow = '0 0 10px #00ccff';
                    } else {
                        this.parentNode.style.boxShadow = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>
