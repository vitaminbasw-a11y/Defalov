<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delta Script Loader</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            border: 1px solid #00aaff;
            border-radius: 10px;
            padding: 25px;
            background: rgba(10, 10, 30, 0.9);
            box-shadow: 0 0 25px rgba(0, 255, 255, 0.4);
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
            color: #00ff99;
        }
        
        h2 {
            color: #00ff99;
            margin: 20px 0 15px;
        }
        
        .status {
            padding: 15px;
            border-radius: 8px;
            margin: 20px 0;
            background: rgba(20, 40, 60, 0.6);
            border: 1px solid #0088ff;
        }
        
        .status.error {
            background: rgba(80, 20, 20, 0.6);
            border-color: #ff3333;
            color: #ff9999;
        }
        
        .status.success {
            background: rgba(20, 60, 20, 0.6);
            border-color: #33ff33;
            color: #99ff99;
        }
        
        .code-block {
            background: #001122;
            border: 1px solid #0088ff;
            border-radius: 8px;
            padding: 15px;
            margin: 15px 0;
            overflow-x: auto;
            font-family: 'Courier New', monospace;
            color: #00ffcc;
        }
        
        .controls {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin: 25px 0;
        }
        
        button {
            background: linear-gradient(to right, #0088ff, #00ccff);
            border: none;
            border-radius: 5px;
            padding: 12px 25px;
            color: #001122;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s;
            flex: 1;
            min-width: 200px;
        }
        
        button:hover {
            background: linear-gradient(to right, #00ccff, #00ffcc);
            box-shadow: 0 0 15px rgba(0, 200, 255, 0.6);
            transform: translateY(-2px);
        }
        
        button.secondary {
            background: linear-gradient(to right, #444, #666);
            color: #ccc;
        }
        
        button.secondary:hover {
            background: linear-gradient(to right, #555, #777);
            box-shadow: 0 0 15px rgba(150, 150, 150, 0.4);
        }
        
        .solutions {
            margin: 25px 0;
        }
        
        .solution {
            background: rgba(20, 40, 60, 0.6);
            border: 1px solid #0088ff;
            border-radius: 8px;
            padding: 15px;
            margin: 15px 0;
        }
        
        .solution h3 {
            color: #00ffcc;
            margin-bottom: 10px;
        }
        
        .solution p {
            color: #aaffff;
            line-height: 1.5;
        }
        
        .loader {
            border: 4px solid rgba(0, 170, 255, 0.3);
            border-radius: 50%;
            border-top: 4px solid #00ccff;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
            display: none;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        
        footer {
            text-align: center;
            margin-top: 30px;
            padding-top: 15px;
            border-top: 1px solid #00aaff;
            color: #00aaee;
            font-size: 0.9rem;
        }
        
        .url-input {
            width: 100%;
            padding: 12px;
            background: #001122;
            border: 1px solid #0088ff;
            border-radius: 5px;
            color: #00ffcc;
            margin: 15px 0;
            font-size: 16px;
        }
        
        .url-input:focus {
            outline: none;
            border-color: #00ffcc;
            box-shadow: 0 0 10px rgba(0, 255, 255, 0.5);
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Delta Script Loader</h1>
            <p>Диагностика и решение проблем с загрузкой скриптов</p>
        </header>
        
        <div class="status error">
            <h2>Ошибка загрузки скрипта</h2>
            <p>Не удалось загрузить скрипт по указанному URL. Возможные причины:</p>
        </div>
        
        <div class="code-block">
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vitaminbasw-a11y/Defalov/refs/heads/main/Mail.lua"))()
        </div>
        
        <h2>Диагностика проблемы</h2>
        
        <div class="controls">
            <button id="check-url">Проверить URL</button>
            <button id="simulate-load" class="secondary">Симулировать успешную загрузку</button>
            <button id="alternative-script">Альтернативный скрипт</button>
        </div>
        
        <div class="loader" id="loader"></div>
        
        <div class="solutions">
            <h2>Возможные решения</h2>
            
            <div class="solution">
                <h3>1. Проверьте доступность URL</h3>
                <p>Убедитесь, что ссылка доступна и содержит правильный скрипт. Возможно, репозиторий был перемещен или удален.</p>
            </div>
            
            <div class="solution">
                <h3>2. Используйте raw-ссылку</h3>
                <p>Убедитесь, что вы используете raw-версию скрипта с GitHub. Обычная ссылка не будет работать.</p>
            </div>
            
            <div class="solution">
                <h3>3. Проверьте синтаксис</h3>
                <p>Убедитесь, что синтаксис вызова loadstring правильный. Иногда требуются небольшие изменения.</p>
            </div>
            
            <div class="solution">
                <h3>4. Используйте альтернативный загрузчик</h3>
                <p>Попробуйте альтернативные методы загрузки скриптов, если текущий не работает.</p>
            </div>
        </div>
        
        <h2>Альтернативная ссылка для загрузки</h2>
        <input type="text" class="url-input" id="script-url" value="https://raw.githubusercontent.com/vitaminbasw-a11y/Defalov/refs/heads/main/Mail.lua">
        
        <div class="controls">
            <button id="try-again">Попробовать снова</button>
            <button id="copy-script" class="secondary">Копировать код для вставки</button>
        </div>
        
        <footer>
            <p>Delta Script Loader | Инструмент для диагностики проблем с загрузкой скриптов</p>
        </footer>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const loader = document.getElementById('loader');
            const statusDiv = document.querySelector('.status');
            const scriptUrl = document.getElementById('script-url');
            
            // Проверить URL
            document.getElementById('check-url').addEventListener('click', function() {
                loader.style.display = 'block';
                
                setTimeout(function() {
                    loader.style.display = 'none';
                    statusDiv.innerHTML = `
                        <h2>Результат проверки URL</h2>
                        <p>URL: ${scriptUrl.value}</p>
                        <p>Статус: <span style="color: #ff5555">Недоступен</span></p>
                        <p>Возможно, репозиторий не существует или у вас нет к нему доступа.</p>
                    `;
                    statusDiv.className = 'status error';
                }, 1500);
            });
            
            // Симулировать успешную загрузку
            document.getElementById('simulate-load').addEventListener('click', function() {
                loader.style.display = 'block';
                
                setTimeout(function() {
                    loader.style.display = 'none';
                    statusDiv.innerHTML = `
                        <h2>Симуляция успешной загрузки</h2>
                        <p>Скрипт успешно загружен и выполнен!</p>
                        <p>В реальной среде скрипт был бы теперь активен.</p>
                    `;
                    statusDiv.className = 'status success';
                }, 1500);
            });
            
            // Предложить альтернативный скрипт
            document.getElementById('alternative-script').addEventListener('click', function() {
                scriptUrl.value = "https://example.com/alternate-script.lua";
                
                statusDiv.innerHTML = `
                    <h2>Альтернативный скрипт</h2>
                    <p>Попробуйте использовать этот альтернативный скрипт.</p>
                    <p>Не забудьте проверить источник на безопасность!</p>
                `;
                statusDiv.className = 'status';
            });
            
            // Попробовать снова
            document.getElementById('try-again').addEventListener('click', function() {
                loader.style.display = 'block';
                
                setTimeout(function() {
                    loader.style.display = 'none';
                    statusDiv.innerHTML = `
                        <h2>Попытка загрузки</h2>
                        <p>Попытка загрузить: ${scriptUrl.value}</p>
                        <p>Статус: <span style="color: #ff5555">Ошибка загрузки</span></p>
                        <p>Сервер не отвечает или скрипт не найден.</p>
                    `;
                    statusDiv.className = 'status error';
                }, 1500);
            });
            
            // Копировать код для вставки
            document.getElementById('copy-script').addEventListener('click', function() {
                const code = `loadstring(game:HttpGet("${scriptUrl.value}"))()`;
                
                navigator.clipboard.writeText(code).then(function() {
                    statusDiv.innerHTML = `
                        <h2>Код скопирован</h2>
                        <p>Код успешно скопирован в буфер обмена:</p>
                        <p><code>${code}</code></p>
                    `;
                    statusDiv.className = 'status success';
                    
                    setTimeout(function() {
                        statusDiv.innerHTML = `
                            <h2>Ошибка загрузки скрипта</h2>
                            <p>Не удалось загрузить скрипт по указанному URL. Возможные причины:</p>
                        `;
                        statusDiv.className = 'status error';
                    }, 3000);
                });
            });
        });
    </script>
</body>
</html>
